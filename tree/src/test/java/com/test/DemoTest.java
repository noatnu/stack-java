package com.test;

import com.blue.dal.dto.UserDto;
import com.blue.dal.entity.UserBoot;
import com.blue.service.UserBootService;
import com.blue.spring.SpringBootDemoApplication;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import javax.sql.DataSource;
import java.util.Date;
import java.util.Random;
import java.util.UUID;

/**
 * @Author zch
 * @Description
 * @createDate 2018/11/18
 **/
@RunWith(SpringRunner.class)
@SpringBootTest(classes = {SpringBootDemoApplication.class})
public class DemoTest {

    private final Logger logger = LoggerFactory.getLogger(getClass());

    @Autowired
    private UserBootService userBootService;

    @Autowired
    private DataSource dataSource;

    @Autowired
    private UserDto userDto;

    @Test
    public void testA(){
        Random random = new Random(System.currentTimeMillis());
        UserBoot userBoot = new UserBoot();
        userBoot.setPid(random.nextInt(1000000));
        userBoot.setUsername(UUID.randomUUID().toString());
        userBoot.setCreatedate(new Date());
        userBoot.setAge(random.nextInt(100));
        try {
            userBootService.saveUserBoot(userBoot);
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Test
    public void testB(){
        if (dataSource != null){
            System.out.println(dataSource);
        }
    }

    @Test
    public void testC(){
        System.out.println(userDto);
        logger.info("testC");
    }
}
