package com.blue.service;

import com.blue.dal.dao.TreeNodeDao;
import com.blue.dal.entity.TreeNode;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by zch on 2019-12-6.
 */

@Service
public class TreeNodeService {

    @Autowired
    private TreeNodeDao treeNodeDao;

    public void saveTreeNode(TreeNode treeNode) {
        if (StringUtils.isEmpty(treeNode.getId())) {
            treeNode.setId(RandomStringUtils.randomNumeric(25));
        }
        treeNodeDao.saveTreeNode(treeNode);
    }

    public void saveAndUpdate(TreeNode treeNode){
        if (StringUtils.isNotEmpty(treeNode.getId())){
            saveTreeNode(treeNode) ;
        }else {
            updateTreeNode(treeNode) ;
        }
    }

    public void updateTreeNode(TreeNode treeNode) {
        treeNodeDao.updateTreeNode(treeNode);
    }

    public void deleteTreeNodeById(String id) {
        treeNodeDao.deleteTreeNodeById(id);
    }

    public TreeNode getTreeNodeById(String id) {
        return treeNodeDao.getTreeNodeById(id);
    }

    public List<TreeNode> getTreeNodeList(TreeNode treeNode) {
        return treeNodeDao.getTreeNodeList(treeNode);
    }

}
