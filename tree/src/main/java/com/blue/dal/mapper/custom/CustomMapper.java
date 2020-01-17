package com.blue.dal.mapper.custom;


import com.blue.common.page.PageRequest;
import com.blue.dal.entity.UserBoot;

import java.util.List;

public interface CustomMapper {

    /**
     * 分页查询用户
     * @return
     */
    List<UserBoot> selectPage();

    /**
     *
     * @param pageRequest
     * @return
     */
    List<UserBoot> selectPageByQuery(PageRequest pageRequest);




}
