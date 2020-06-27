package com.gold.controller.data;

import lombok.extern.slf4j.Slf4j;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "/sys")
@Slf4j
@RestController
public class HomeController {

    @GetMapping(value = "/home")
    public ModelAndView home(){
        ModelAndView mv = new ModelAndView() ;
        mv.setViewName("/view/freemarkerHome");
        return mv;
    }

    @RequestMapping(value = "/toDemo")
    public ModelAndView toDemo(ModelAndView mv) {
        log.info("====>>跳转freemarker页面");
        mv.addObject("name", "jack");
        mv.setViewName("freemarker");
        return mv;
    }

}
