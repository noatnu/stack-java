package com.blue.service;

import com.blue.dao.MessageDao;
import com.blue.entity.BookExample;
import com.blue.entity.Message;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import tool.log.LoggerFactoryGET;

import java.util.List;
import java.util.logging.Logger;

/**
 * @Auther: zch
 * @Date: 2018/7/30 21:40
 * @Description:
 */
@Service
public class MessageService {
    private final Logger logger = LoggerFactoryGET.getLoggerFactory().getLoggerAll();

    @Autowired
    private MessageDao messageDao;

    public List<Message> messageList(){
        return messageDao.messageList();
    }

    public List<BookExample> bookExampleList(int pageSize, int page){
        return BiologyBeanPoUtils.getBiologyBeanPoUtils().bookExampleList(pageSize,page);
    }

    public int getTotal(){
        return BiologyBeanPoUtils.getBiologyBeanPoUtils().examples.size();
    }
}
