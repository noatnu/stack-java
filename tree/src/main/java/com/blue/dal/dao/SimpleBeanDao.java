package com.blue.dal.dao;

import com.blue.dal.dto.BiologyBeanPo;
import com.blue.dal.dto.SimpleBean;
import com.google.common.collect.Lists;
import com.google.common.collect.Maps;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Repository;
import tool.help.Zhou_StdRandom;
import tool.help.Zhou_String;
import tool.help.Zhou_Word;
import tool.utils.PinYinUtil;

import java.util.Date;
import java.util.List;
import java.util.Map;

/**
 * @createDate 2018/12/26
 **/
@Repository
public class SimpleBeanDao {

    public List<BiologyBeanPo> prototypeObj() {
        List<BiologyBeanPo> biologyBeanPoList = Lists.newArrayList();
        PinYinUtil pinYinUtil = new PinYinUtil();
        Map<String, String> map = Maps.newHashMap();
        map.put("a1", pinYinUtil.getStringPinYin("水生生物"));
        map.put("a2", pinYinUtil.getStringPinYin("陆地生物"));
        map.put("a3", pinYinUtil.getStringPinYin("飞翔生物"));
        map.put("a4", pinYinUtil.getStringPinYin("两栖生物"));
        BiologyBeanPo biologyBeanPo = null;
        int m = 0;
        biologyBeanPoList.add(new BiologyBeanPo().setPid(0).setId(1).setTitle(map.get("a1")).setDate(new Date()).setName("水生生物").setOpen(true).setNumber(String.format("%d",m++)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
        biologyBeanPoList.add(new BiologyBeanPo().setPid(0).setId(2).setTitle(map.get("a2")).setDate(new Date()).setName("陆地生物").setOpen(true).setNumber(String.format("%d",m++)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
        biologyBeanPoList.add(new BiologyBeanPo().setPid(0).setId(3).setTitle(map.get("a3")).setDate(new Date()).setName("飞翔生物").setNumber(String.format("%d",m++)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
        biologyBeanPoList.add(new BiologyBeanPo().setPid(0).setId(4).setTitle(map.get("a4")).setDate(new Date()).setName("两栖生物").setOpen(true).setNumber(String.format("%d",m++)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
        final int num = 10;
        final int v = 4;
        for (int j = 1; j <= v; j++) {
            for (int i = 1; i < num; i++) {
                String a = String.valueOf(j);
                String k = String.format("%s%d", a, i);
                if (StringUtils.isNumeric(k)) {
                    int n = Integer.parseInt(k);
                    if (StringUtils.isNumeric(a)) {
                        if (i == 1) {
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(true);
                            if (a.equals("1")) {
                                biologyBeanPo.setTitle("鲨鱼").setName("鲨鱼");
                                int temp = Zhou_StdRandom.uniform(2,10);
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("姥鲨").setTitle("姥鲨").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("斗鲨鱼").setTitle("斗鲨鱼").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("巨齿鲨").setTitle("巨齿鲨").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("哥布林鲨").setTitle("哥布林鲨").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("雪茄达摩鲨").setTitle("雪茄达摩鲨").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("皱鳃鲨").setTitle("皱鳃鲨").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("长尾鲨").setTitle("长尾鲨").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("巨口鲨").setTitle("巨口鲨").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                            }
                            if (a.equals("2")) {
                                biologyBeanPo.setTitle("大象");
                                biologyBeanPo.setName("大象");
                            }
                            if (a.equals("3")) {
                                biologyBeanPo.setTitle("勺嘴鹬");
                                biologyBeanPo.setName("勺嘴鹬");
                            }
                            if (a.equals("4")) {
                                biologyBeanPo.setTitle("青蛙");
                                biologyBeanPo.setName("青蛙");
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }
                        if (i == 2) {
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(true);
                            if (a.equals("1")) {
                                biologyBeanPo.setTitle("鲸鱼").setName("鲸鱼");
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("蓝鲸").setTitle("蓝鲸").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000,2000)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("虎鲸").setTitle("虎鲸").setDate(new Date()).setId(Zhou_StdRandom.uniform(1001,2001)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("逆戟鲸").setTitle("逆戟鲸").setDate(new Date()).setId(Zhou_StdRandom.uniform(1002,2002)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("角鲸").setTitle("角鲸").setDate(new Date()).setId(Zhou_StdRandom.uniform(1004,2004)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("白鲸").setTitle("白鲸").setDate(new Date()).setId(Zhou_StdRandom.uniform(1004,2004)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                            }
                            if (a.equals("2")) {
                                biologyBeanPo.setTitle("狮子");
                                biologyBeanPo.setName("狮子");
                            }
                            if (a.equals("3")) {
                                biologyBeanPo.setTitle("白腰滨鹬");
                                biologyBeanPo.setName("白腰滨鹬");
                            }
                            if (a.equals("4")) {
                                biologyBeanPo.setTitle("牛蛙");
                                biologyBeanPo.setName("牛蛙");
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }
                        if (i == 3) {
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(false);
                            if (a.equals("1")) {
                                biologyBeanPo.setTitle("海豹").setName("海豹");
                            }
                            if (a.equals("2")) {
                                biologyBeanPo.setTitle("老虎").setName("老虎");
                                int temp = Zhou_StdRandom.uniform(2,10);
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("东北虎").setTitle("东北虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("华南虎").setTitle("华南虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("巴厘虎").setTitle("巴厘虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("印度支那虎").setTitle("印度支那虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("马来虎").setTitle("马来虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("爪哇虎").setTitle("爪哇虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("苏门答腊虎").setTitle("苏门答腊虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("孟加拉虎").setTitle("孟加拉虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                                biologyBeanPoList.add(new BiologyBeanPo().set_parentId(biologyBeanPo.getId()).setPid(biologyBeanPo.getId()).setName("里海虎").setTitle("里海虎").setDate(new Date()).setId(Zhou_StdRandom.uniform(1000+ ++temp,2000+ ++temp)).setArea(Zhou_StdRandom.uniform(1.0,150.0)));
                            }
                            if (a.equals("3")) {
                                biologyBeanPo.setTitle("岩滨鹬");
                                biologyBeanPo.setName("岩滨鹬");
                            }
                            if (a.equals("4")) {
                                biologyBeanPo.setTitle("蟾蜍");
                                biologyBeanPo.setName("蟾蜍");
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }
                        if (i == 4) {
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(false).setArea(Zhou_StdRandom.uniform(1.0,150.0));
                            if (a.equals("1")) {
                                biologyBeanPo.setTitle("水母Jellyfish");
                                biologyBeanPo.setName("水母Jellyfish");
                            }
                            if (a.equals("2")) {
                                biologyBeanPo.setTitle("猴子");
                                biologyBeanPo.setName("猴子");
                            }
                            if (a.equals("3")) {
                                biologyBeanPo.setTitle("高跷鹬");
                                biologyBeanPo.setName("高跷鹬");
                            }
                            if (a.equals("4")) {
                                biologyBeanPo.setTitle("大鲵");
                                biologyBeanPo.setName("大鲵");
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }
                        if (i == 5) {
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(false).setArea(Zhou_StdRandom.uniform(1.0,150.0));
                            if (a.equals("1")) {
                                biologyBeanPo.setTitle("章鱼Octopus");
                                biologyBeanPo.setName("章鱼Octopus");
                            }
                            if (a.equals("2")) {
                                biologyBeanPo.setTitle("犀牛");
                                biologyBeanPo.setName("犀牛");
                            }
                            if (a.equals("3")) {
                                biologyBeanPo.setTitle("铜翅水雉");
                                biologyBeanPo.setName("铜翅水雉");
                            }
                            if (a.equals("4")) {
                                biologyBeanPo.setTitle("河马");
                                biologyBeanPo.setName("河马");
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }
                        if (i==6){
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(false).setArea(Zhou_StdRandom.uniform(1.0,150.0));
                            switch (a){
                                case "1":
                                    biologyBeanPo.setTitle("乌贼 cuttlefish").setName("乌贼 cuttlefish");
                                    break;
                                case "2":
                                    biologyBeanPo.setTitle("熊").setName("熊");
                                    break;
                                case "3":
                                    biologyBeanPo.setTitle("大石鸻").setName("大石鸻");
                                    break;
                                case "4":
                                    biologyBeanPo.setTitle("大鲵").setName("大鲵");
                                    break;
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }
                        if (i==7){
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(false).setArea(Zhou_StdRandom.uniform(1.0,150.0));
                            switch (a){
                                case "1":
                                    biologyBeanPo.setTitle("海参").setName("海参");
                                    break;
                                case "2":
                                    biologyBeanPo.setTitle("猫").setName("猫");
                                    break;
                                case "3":
                                    biologyBeanPo.setTitle("鹰").setName("鹰");
                                    break;
                                case "4":
                                    biologyBeanPo.setTitle("小鲵").setName("小鲵");
                                    break;
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }
                        if (i==8){
                            biologyBeanPo = new BiologyBeanPo();
                            biologyBeanPo.set_parentId(Integer.parseInt(a)).setPid(Integer.parseInt(a)).setId(n).setDate(new Date()).setOpen(false).setArea(Zhou_StdRandom.uniform(1.0,150.0));
                            switch (a){
                                case "1":
                                    biologyBeanPo.setTitle("海豚").setName("海豚");
                                    break;
                                case "2":
                                    biologyBeanPo.setTitle("狗").setName("狗");
                                    break;
                                case "3":
                                    biologyBeanPo.setTitle("海鸥").setName("海鸥");
                                    break;
                                case "4":
                                    biologyBeanPo.setTitle("鳄鱼").setName("鳄鱼");
                                    break;
                            }
                            biologyBeanPoList.add(biologyBeanPo);
                        }

                    }
                }
            }

        }
        return biologyBeanPoList;
    }

    public List<SimpleBean> simpleBeanList() {
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
            simpleBean.setNum(Zhou_StdRandom.uniform(3, 100));
            simpleBean.setTitle(Zhou_String.toLowerCase(5));
            simpleBeans.add(simpleBean);
            for (int j = 1; j < num; j++) {
                simple = new SimpleBean();
                simple.setPid(i);
                simple.setId(j);
                simple.setName(Zhou_Word.getChineseName());
                simple.setNum(Zhou_StdRandom.uniform(3, 100));
                simple.setTitle(Zhou_String.toLowerCase(5));
                simpleBeans.add(simple);
            }
        }
        return simpleBeans;
    }

}
