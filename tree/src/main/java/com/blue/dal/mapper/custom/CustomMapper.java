package com.blue.dal.mapper.custom;


import com.blue.dal.entity.UserBoot;

import java.util.List;

public interface CustomMapper {

    /**
     * 分页查询用户
     * @return
     */
    List<UserBoot> selectPage();


}
