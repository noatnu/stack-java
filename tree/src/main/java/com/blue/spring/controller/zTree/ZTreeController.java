package com.blue.spring.controller.zTree;

import com.blue.common.ViewEnum;
import com.blue.dal.entity.TreeNode;
import com.blue.service.TreeNodeService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import tool.web.HttpResult;

@RequestMapping(value = "/ztree")
@RestController
public class ZTreeController {

    @Autowired
    private TreeNodeService treeNodeService;
    private final Logger logger = LoggerFactory.getLogger(getClass()) ;

    @RequestMapping(value = "/baseEdit", method = {RequestMethod.GET}, name = "baseEdit")
    public ModelAndView hello() {
       String view = String.join("" ,ViewEnum.ZTREE.getKey(),"baseEdit") ;
        ModelAndView mv = new ModelAndView(view) ;
        return mv;
    }

    @GetMapping(value = "/getTreeNodeList")
    public HttpResult getTreeNodeList(TreeNode treeNode){
        try {
            return HttpResult.newCorrectResult(200,treeNodeService.getTreeNodeList(treeNode)) ;
        } catch (Exception e) {
            logger.error(e.getMessage(),e);
            return HttpResult.newErrorResult(200,String.join("","没有获取到数据",e.getMessage())) ;
        }
    }

}
