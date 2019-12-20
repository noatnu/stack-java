package com.blue.spring.controller.zTree;

import com.blue.common.ViewEnum;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "/ztree")
@RestController
public class ZTreeController {

    @RequestMapping(value = "/baseEdit", method = {RequestMethod.GET}, name = "baseEdit")
    public ModelAndView hello() {
       String view = String.join("" ,ViewEnum.ZTREE.getKey(),"baseEdit") ;
        ModelAndView mv = new ModelAndView(view) ;
        return mv;
    }

}
