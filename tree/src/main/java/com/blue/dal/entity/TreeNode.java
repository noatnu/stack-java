package com.blue.dal.entity;

import java.util.Date;

public class TreeNode {
    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.id
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private Integer id;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.pid
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String pid;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.parent_name
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String parentName;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.name
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String name;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.html_text
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String htmlText;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.json
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String json;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.content
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String content;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.remark
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String remark;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.url
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String url;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.ip_adress
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String ipAdress;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.ip_type
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private String ipType;

    /**
     * This field was generated by MyBatis Generator.
     * This field corresponds to the database column tb_tree_node.last_update_time
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    private Date lastUpdateTime;

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.id
     *
     * @return the value of tb_tree_node.id
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public Integer getId() {
        return id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.id
     *
     * @param id the value for tb_tree_node.id
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setId(Integer id) {
        this.id = id;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.pid
     *
     * @return the value of tb_tree_node.pid
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getPid() {
        return pid;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.pid
     *
     * @param pid the value for tb_tree_node.pid
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setPid(String pid) {
        this.pid = pid == null ? null : pid.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.parent_name
     *
     * @return the value of tb_tree_node.parent_name
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getParentName() {
        return parentName;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.parent_name
     *
     * @param parentName the value for tb_tree_node.parent_name
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setParentName(String parentName) {
        this.parentName = parentName == null ? null : parentName.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.name
     *
     * @return the value of tb_tree_node.name
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getName() {
        return name;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.name
     *
     * @param name the value for tb_tree_node.name
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setName(String name) {
        this.name = name == null ? null : name.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.html_text
     *
     * @return the value of tb_tree_node.html_text
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getHtmlText() {
        return htmlText;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.html_text
     *
     * @param htmlText the value for tb_tree_node.html_text
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setHtmlText(String htmlText) {
        this.htmlText = htmlText == null ? null : htmlText.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.json
     *
     * @return the value of tb_tree_node.json
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getJson() {
        return json;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.json
     *
     * @param json the value for tb_tree_node.json
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setJson(String json) {
        this.json = json == null ? null : json.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.content
     *
     * @return the value of tb_tree_node.content
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getContent() {
        return content;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.content
     *
     * @param content the value for tb_tree_node.content
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setContent(String content) {
        this.content = content == null ? null : content.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.remark
     *
     * @return the value of tb_tree_node.remark
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getRemark() {
        return remark;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.remark
     *
     * @param remark the value for tb_tree_node.remark
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setRemark(String remark) {
        this.remark = remark == null ? null : remark.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.url
     *
     * @return the value of tb_tree_node.url
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getUrl() {
        return url;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.url
     *
     * @param url the value for tb_tree_node.url
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setUrl(String url) {
        this.url = url == null ? null : url.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.ip_adress
     *
     * @return the value of tb_tree_node.ip_adress
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getIpAdress() {
        return ipAdress;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.ip_adress
     *
     * @param ipAdress the value for tb_tree_node.ip_adress
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setIpAdress(String ipAdress) {
        this.ipAdress = ipAdress == null ? null : ipAdress.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.ip_type
     *
     * @return the value of tb_tree_node.ip_type
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public String getIpType() {
        return ipType;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.ip_type
     *
     * @param ipType the value for tb_tree_node.ip_type
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setIpType(String ipType) {
        this.ipType = ipType == null ? null : ipType.trim();
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method returns the value of the database column tb_tree_node.last_update_time
     *
     * @return the value of tb_tree_node.last_update_time
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public Date getLastUpdateTime() {
        return lastUpdateTime;
    }

    /**
     * This method was generated by MyBatis Generator.
     * This method sets the value of the database column tb_tree_node.last_update_time
     *
     * @param lastUpdateTime the value for tb_tree_node.last_update_time
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    public void setLastUpdateTime(Date lastUpdateTime) {
        this.lastUpdateTime = lastUpdateTime;
    }
}