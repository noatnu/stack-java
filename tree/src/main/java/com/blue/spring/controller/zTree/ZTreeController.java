package com.blue.spring.controller.zTree;

import com.blue.common.ViewEnum;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

@RequestMapping(value = "/ztree")
@RestController
public class ZTreeController {

    @RequestMapping(value = "/baseHandle", method = {RequestMethod.GET}, name = "baseHandle")
    public ModelAndView baseHandle() {
       String view = String.join("" ,ViewEnum.ZTREE.getKey(),"baseHandle") ;
        ModelAndView mv = new ModelAndView(view) ;
        return mv;
    }

}
