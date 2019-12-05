package com.blue.spring.controller.other;

import com.blue.dal.entity.UserBoot;
import com.blue.service.UserBootService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.util.ObjectUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;
import tool.web.BootstrapTableVo;
import tool.web.HttpResult;

import java.util.ArrayList;
import java.util.List;

/**
 * @createDate 2018/12/12
 **/
@RequestMapping(value = "/api/user")
@RestController
public class RestfulController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private UserBootService userBootService;

    @RequestMapping(value = "/index",method = {RequestMethod.GET})
    public ModelAndView index(){
        return new ModelAndView(String.format("%s%s","restful/","index"));
    }

    @GetMapping(value = "/get", name = "get")
    public HttpResult get(@RequestParam(value = "id", required = true) int id) {
        try {
            UserBoot userBoot = userBootService.getUserBoot(id);
            return HttpResult.newCorrectResult(200, userBoot);
        } catch (Exception e) {
            logger.error("error", e);
            return HttpResult.newErrorResult(500, e);
        }
    }

    @PostMapping(value = "/save", name = "save")
    public HttpResult save(UserBoot userBoot) {
        try {
            userBootService.saveUserBoot(userBoot);
            return HttpResult.newCorrectResult(200);
        } catch (Exception e) {
            logger.error("error", e);
            return HttpResult.newErrorResult(500, e);
        }
    }

    @DeleteMapping(value = "/delete", name = "delete")
    public HttpResult delete(@RequestParam(value = "id", required = true) int id) {
        try {
            userBootService.deleteUserBoot(id);
            return HttpResult.newCorrectResult(200);
        } catch (Exception e) {
            logger.error("error", e);
            return HttpResult.newErrorResult(500, e);
        }
    }

    @PutMapping(value = "/put", name = "put")
    public HttpResult update(@RequestParam(value = "userBoot") UserBoot userBoot) {
        try {
            userBootService.updateUserBoot(userBoot);
            return HttpResult.newCorrectResult(200);
        } catch (Exception e) {
            logger.error("error", e);
            return HttpResult.newErrorResult(500, e);
        }
    }

    @RequestMapping(value = "/list", name = "list", method = {RequestMethod.GET})
    public BootstrapTableVo list() {
        try {
            List<UserBoot> userBootList = userBootService.findListUserBoot();
            BootstrapTableVo vo = new BootstrapTableVo();
            vo.setRows(ObjectUtils.isEmpty(userBootList)?new ArrayList<UserBoot>():userBootList);
            vo.setTotal(Integer.toUnsignedLong(userBootList.size()));
            return vo;
        } catch (Exception e) {
            logger.error("error", e);
            return null ;
        }
    }

}
