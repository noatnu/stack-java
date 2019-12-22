package com.blue.dal.mapper;

import com.blue.dal.entity.TreeNode;
import com.blue.dal.entity.TreeNodeExample;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface TreeNodeMapper {
    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int countByExample(TreeNodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int deleteByExample(TreeNodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int deleteByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int insert(TreeNode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int insertSelective(TreeNode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    List<TreeNode> selectByExample(TreeNodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    TreeNode selectByPrimaryKey(Integer id);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int updateByExampleSelective(@Param("record") TreeNode record, @Param("example") TreeNodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int updateByExample(@Param("record") TreeNode record, @Param("example") TreeNodeExample example);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int updateByPrimaryKeySelective(TreeNode record);

    /**
     * This method was generated by MyBatis Generator.
     * This method corresponds to the database table tb_tree_node
     *
     * @mbggenerated Sun Dec 22 11:20:07 CST 2019
     */
    int updateByPrimaryKey(TreeNode record);
}