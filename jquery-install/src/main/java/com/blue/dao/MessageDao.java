package com.blue.dao;

import com.blue.entity.Message;
import com.google.common.collect.Lists;
import tool.help.Zhou_StdRandom;
import tool.help.Zhou_String;
import org.springframework.stereotype.Repository;
import tool.log.LoggerFactoryGET;

import java.util.Date;
import java.util.List;
import java.util.UUID;
import java.util.logging.Logger;

/**
 * @Auther: zch
 * @Date: 2018/7/30 21:30
 * @Description:
 */
@Repository
public class MessageDao {
    private final Logger logger = LoggerFactoryGET.getLoggerFactory().getLoggerAll();

    public List<Message> messageList(){
        List<Message> messages = Lists.newArrayList();
        final int num = 12;
        for (int i = 0; i < num; i++) {
            Message message = new Message();
            message.setContent(Zhou_String.toLowerCase(5)).
                    setCreate(new Date()).
                    setTitle(Zhou_String.toWord(6)).
                    setId(UUID.randomUUID().toString()).
                    setDescribe(String.valueOf(System.currentTimeMillis())).setGender(Zhou_StdRandom.uniform(0,2));
            messages.add(message);
        }
        return messages;
    }
}
