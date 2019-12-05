package com.blue.service;

import com.blue.dal.dao.SimpleBeanDao;
import com.blue.dal.dto.BiologyBeanPo;
import com.blue.dal.dto.SimpleBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @createDate 2018/12/26
 **/
@Service
public class SimpleBeanService {

    @Autowired
    private SimpleBeanDao simpleBeanDao;

    public List<SimpleBean> simpleBeanList(){
        return simpleBeanDao.simpleBeanList();
    }

    public List<BiologyBeanPo> biologyBeanList(){
        return simpleBeanDao.prototypeObj();
    }
}
