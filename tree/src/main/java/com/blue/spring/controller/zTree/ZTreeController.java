package com.blue.spring.controller.zTree;

import com.blue.common.ViewEnum;
import com.blue.dal.dto.BiologyBeanPo;
import com.blue.service.SimpleBeanService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;


@RequestMapping(value = "/ztree")
@RestController
public class ZTreeController {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private SimpleBeanService simpleBeanService;

    @RequestMapping(value = "/hello", method = {RequestMethod.GET}, name = "第一个例子")
    public ModelAndView hello() {
        logger.debug("hello");
        return new ModelAndView(String.format("%s%s", ViewEnum.ZTREE.getKey(), "hello"));
    }

    @GetMapping(value = "/jsonShow")
    public ModelAndView jsonShow() {
        ModelAndView mv = new ModelAndView(String.format("%s%s", ViewEnum.ZTREE.getKey(), "jsonShow"));
        return mv;
    }

    @GetMapping(value = "/custom",name = "自定义")
    public ModelAndView custom() {
        ModelAndView mv = new ModelAndView(String.format("%s%s", ViewEnum.ZTREE.getKey(), "custom"));
        return mv;
    }

    @GetMapping(value = "/beforeEditName",name = "zTree节点增删改")
    public ModelAndView beforeEditName() {
        ModelAndView mv = new ModelAndView(String.format("%s%s", ViewEnum.ZTREE.getKey(), "beforeEditName"));
        return mv;
    }

    @RequestMapping(value = "/ZTreeData", name = "zTree json 数据", method = {RequestMethod.POST})
    public Object simpleBeanList() {
        logger.info(String.format("method:%s()", "ZTreeData"));
        return simpleBeanService.simpleBeanList();
    }

    @RequestMapping(value = "/biologyBeanList", name = "zTree json 数据", method = {RequestMethod.POST})
    public Object biologyBeanList() {
        logger.info(String.format("method:%s()", "biologyBeanList"));
        List<BiologyBeanPo> biologyBeanPoList = simpleBeanService.biologyBeanList();
        return biologyBeanPoList;
    }

}
