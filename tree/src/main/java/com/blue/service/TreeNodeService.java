package com.blue.service;

import com.blue.dal.dao.TreeNodeDao;
import com.blue.dal.entity.TreeNode;
import org.apache.commons.lang3.RandomStringUtils;
import org.apache.commons.lang3.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

/**
 * Created by zch on 2019-12-6.
 */

@Service
public class TreeNodeService {

    @Autowired
    private TreeNodeDao treeNodeDao;

    public void saveTreeNode(TreeNode treeNode) {
        treeNode.setIpType("ipv4");
        treeNodeDao.saveTreeNode(treeNode);
    }

    public void saveAndUpdate(TreeNode treeNode){
        if (treeNode.getId() == null || treeNode.getId()==0){
            saveTreeNode(treeNode) ;
        }else {
            updateTreeNode(treeNode) ;
        }
    }

    public void updateTreeNode(TreeNode treeNode) {
        treeNode.setLastUpdateTime(new Date());
        treeNodeDao.updateTreeNode(treeNode);
    }

    public void deleteTreeNodeById(Integer masterId) {
        treeNodeDao.deleteTreeNodeById(masterId);
    }

    public TreeNode getTreeNodeById(Integer masterId) {
        return treeNodeDao.getTreeNodeById(masterId);
    }

    public List<TreeNode> getTreeNodeList(TreeNode treeNode) {
        return treeNodeDao.getTreeNodeList(treeNode);
    }

}
