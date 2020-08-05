package com.gold.tree;

import com.alibaba.druid.spring.boot.autoconfigure.DruidDataSourceAutoConfigure;
import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@MapperScan(basePackages = {"com.gold.dal.mapper"})
@SpringBootApplication(exclude = {DruidDataSourceAutoConfigure.class},scanBasePackages = {"com.gold" })
public class JsTreeApplication {

    public static void main(String[] args) {
        SpringApplication.run(JsTreeApplication.class, args);
    }

}
