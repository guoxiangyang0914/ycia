/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.ia.entity.IaBaseInfo;

/**
 * 个人基本信息DAO接口
 * @author gxy
 * @version 2017-02-09
 */
@MyBatisDao
public interface IaBaseInfoDao extends CrudDao<IaBaseInfo> {
	
	public IaBaseInfo getById(String id);
}