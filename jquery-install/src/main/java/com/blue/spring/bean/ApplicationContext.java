package com.blue.spring.bean;

import org.springframework.stereotype.Component;
import org.springframework.web.context.ServletContextAware;
import tool.log.LoggerFactoryGET;

import javax.servlet.ServletContext;
import java.util.logging.Logger;

/**
 * @Auther: zch
 * @Date: 2018/7/29 16:57
 * @Description:将ContextPath写入application中，给静态文件引用时用、及URL链接地址用
 */
@Component
public class ApplicationContext implements ServletContextAware {
    private final Logger logger = LoggerFactoryGET.getLoggerFactory().getLoggerAll();
    @Override
    public void setServletContext(ServletContext servletContext) {
        String ctx = servletContext.getContextPath();
        logger.info(String.format("ctx= %s",ctx));
        servletContext.setAttribute("ctx", ctx);
    }
}
