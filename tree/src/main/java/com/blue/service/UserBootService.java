package com.blue.service;

import com.blue.dal.dao.UserBootDao;
import com.blue.dal.entity.UserBoot;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @Author zch
 * @Description
 * @createDate 2018/11/18
 **/
@Service
public class UserBootService {

    @Lazy
    @Autowired
    private UserBootDao userBootDao;

    public void saveUserBoot(UserBoot userBoot){
        userBootDao.saveUserBoot(userBoot);
    }

    public UserBoot getUserBoot(Integer id){
        return userBootDao.getUserBoot(id);
    }

    public boolean deleteUserBoot(Integer id){
        return userBootDao.deleteUserBoot(id);
    }

    public boolean updateUserBoot(UserBoot userBoot){
        return userBootDao.updateUserBoot(userBoot);
    }

    public List<UserBoot> findListUserBoot(){
        return userBootDao.findListUserBoot();
    }

}
