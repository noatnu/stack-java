package com.gold.controller.data;


import com.alibaba.fastjson.JSONObject;
import com.baomidou.mybatisplus.core.metadata.IPage;
import com.baomidou.mybatisplus.extension.plugins.pagination.Page;
import com.gold.config.HttpResult;
import com.gold.dal.entity.UcUser;
import com.gold.service.UcUserService;
import com.gold.vo.BootstrapTableVo;
import lombok.extern.slf4j.Slf4j;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import org.springframework.stereotype.Controller;

import javax.servlet.http.HttpServletRequest;
import java.util.Iterator;
import java.util.Map;

/**
 * <p>
 * 用户表 前端控制器
 * </p>
 *
 * @author zch
 * @since 2020-06-27
 */
@Slf4j
@Controller
@RequestMapping("/uc-user")
public class UcUserController {

    @Autowired
    private UcUserService ucUserService;

    @PostMapping(value = "/saveAndUpdate")
    public HttpResult saveAndUpdate(String formData) {
        try {
            UcUser user = JSONObject.parseObject(formData, UcUser.class);
            Long aLong = ucUserService.saveAndUpdate(user);
            user.setVersion(aLong);
            return HttpResult.newCorrectResult(200, user);
        } catch (Exception e) {
            return HttpResult.newErrorResult(500, e);
        }
    }

    @GetMapping(value = "/getTableListData")
    public BootstrapTableVo<UcUser> getTableListData(HttpServletRequest request) {
        //获取前台发送过来的数据
        Integer pageNo = Integer.valueOf(request.getParameter("pageNumber"));
        Integer pageSize = Integer.valueOf(request.getParameter("pageSize"));
        IPage<UcUser> page = new Page<>(pageNo, pageSize);
        Map<String, String[]> parameterMap = request.getParameterMap();
        JSONObject jsonObject = new JSONObject();
        if (!parameterMap.isEmpty()) {
            Iterator<Map.Entry<String, String[]>> iterator = parameterMap.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry<String, String[]> next = iterator.next();
                jsonObject.put(next.getKey(), next.getValue());
            }

        }
        UcUser obj = JSONObject.parseObject(jsonObject.toString(), UcUser.class);
        BootstrapTableVo data = ucUserService.getDataTableList(obj, page);
        return data;
    }

}
