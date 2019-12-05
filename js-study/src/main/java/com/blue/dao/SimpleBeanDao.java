package com.blue.dao;

import com.blue.po.SimpleBean;
import com.google.common.collect.Lists;
import tool.help.Zhou_StdRandom;
import tool.help.Zhou_String;
import tool.help.Zhou_Word;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public class SimpleBeanDao {

    public List<SimpleBean> simpleBeanList(){
        List<SimpleBean> simpleBeans = Lists.newArrayList();
        final int num = 10;
        SimpleBean simpleBean = null;
        SimpleBean simple = null;
        simpleBeans.add(new SimpleBean().setId(0).setNum(0).setName("alice").setPid(0).setTitle("root"));
        for (int i = 1; i < num; i++) {
            simpleBean = new SimpleBean();
            simpleBean.setPid(0);
            simpleBean.setId(i);
            simpleBean.setName(Zhou_Word.getChineseName());
            simpleBean.setNum(Zhou_StdRandom.uniform(3,100));
            simpleBean.setTitle(Zhou_String.toLowerCase(5));
            simpleBeans.add(simpleBean);
            for (int j = 1; j < num; j++) {
                simple = new SimpleBean();
                simple.setPid(i);
                simple.setId(j);
                simple.setName(Zhou_Word.getChineseName());
                simple.setNum(Zhou_StdRandom.uniform(3,100));
                simple.setTitle(Zhou_String.toLowerCase(5));
                simpleBeans.add(simple);
            }
        }
        return simpleBeans;
    }
}
