package com.blue.service;

import com.blue.common.page.PageRequest;
import com.blue.dal.dao.UserBootDao;
import com.blue.dal.entity.UserBoot;
import com.blue.dal.mapper.custom.CustomMapper;
import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Lazy;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Service;
import tool.web.BootstrapTableVo;

import java.util.Date;
import java.util.List;

/**
 * @Author zch
 * @Description
 * @createDate 2018/11/18
 **/
@Service
public class UserBootService {

    @Autowired
    private CustomMapper customMapper;

    @Autowired
    private JdbcTemplate jdbcTemplate;

    public Integer getAllSize(){
        return jdbcTemplate.queryForObject("select count(1) from boot_user",Integer.TYPE) ;
    }

    @Lazy
    @Autowired
    private UserBootDao userBootDao;

    public void saveUserBoot(UserBoot userBoot) {
        userBoot.setCreateDate(new Date());
        userBootDao.saveUserBoot(userBoot);
    }

    public UserBoot getUserBoot(Integer id) {
        return userBootDao.getUserBoot(id);
    }

    public boolean deleteUserBoot(Integer id) {
        return userBootDao.deleteUserBoot(id);
    }

    public boolean updateUserBoot(UserBoot userBoot) {
        return userBootDao.updateUserBoot(userBoot);
    }

    public List<UserBoot> findListUserBoot() {
        return userBootDao.findListUserBoot();
    }

    public BootstrapTableVo getBootstrapTableVo(PageRequest pageRequest) {
        BootstrapTableVo vo = new BootstrapTableVo();
        PageHelper.startPage(pageRequest.getOffset(), pageRequest.getLimit());
        List<UserBoot> userBootList = customMapper.selectPage();
        PageInfo<UserBoot> pageInfo = new PageInfo<UserBoot>(userBootList);
        vo.setTotal(pageInfo.getTotal());
        vo.setRows(userBootList);
        return vo;
    }

    public BootstrapTableVo getBootstrapTableVoTo(PageRequest pageRequest) {
        BootstrapTableVo vo = new BootstrapTableVo();
        List<UserBoot> userBootList = customMapper.selectPageByQuery(pageRequest);
        Long total = Long.valueOf(getAllSize().toString()) ;
        vo.setTotal(total);
        vo.setRows(userBootList);
        return vo;
    }

}
