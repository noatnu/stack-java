package com.blue.spring.controller.model;

import com.blue.common.enums_common.Views;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import tool.log.LoggerFactoryGET;

import java.util.logging.Logger;

/**
 * @Author noatn
 * @Description
 * @createDate 2018/11/21
 **/
@RequestMapping(value = "/c++")
@Controller
public class CAddController {

    private final Logger logger = LoggerFactoryGET.loggerALL;

    @RequestMapping(value = "/helloWorld")
    public ModelAndView helloWorld(){
        ModelAndView mv = new ModelAndView(String.format("%s%s", Views.CORE_VIEW.getVar(),"helloWorld"));
        logger.info(String.format("request method:%s","helloWorld"));
        return mv;
    }

}
