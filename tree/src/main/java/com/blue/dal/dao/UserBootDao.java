package com.blue.dal.dao;

import com.blue.dal.entity.UserBoot;
import com.blue.dal.entity.UserBootExample;
import com.blue.dal.mapper.UserBootMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.stereotype.Repository;

import java.sql.SQLException;
import java.util.List;

/**
 * @Author zch
 * @Description
 * @createDate 2018/11/18
 **/
@Repository
public class UserBootDao {


    @Lazy
    @Autowired(required = true)
    private UserBootMapper userBootMapper;

    public void saveUserBoot(UserBoot userBoot)throws SQLException{
        userBootMapper.insertSelective(userBoot);
    }

    public UserBoot getUserBoot(Integer id)throws SQLException{
        return userBootMapper.selectByPrimaryKey(id);
    }

    public boolean deleteUserBoot(Integer id)throws SQLException{
        return userBootMapper.deleteByPrimaryKey(id)==1;
    }

    public boolean updateUserBoot(UserBoot userBoot)throws SQLException{
        return userBootMapper.updateByPrimaryKeySelective(userBoot)==1;
    }

    public List<UserBoot> findListUserBoot()throws SQLException{
        UserBootExample example = new UserBootExample();
        UserBootExample.Criteria criteria = example.createCriteria();
        criteria.andIdIsNotNull();
        return userBootMapper.selectByExample(example);
    }


}
