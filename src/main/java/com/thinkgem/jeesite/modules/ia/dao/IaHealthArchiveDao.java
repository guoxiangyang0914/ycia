/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.ia.entity.IaHealthArchive;

/**
 * 居民健康档案DAO接口
 * @author gxy
 * @version 2017-02-08
 */
@MyBatisDao
public interface IaHealthArchiveDao extends CrudDao<IaHealthArchive> {
	
	public IaHealthArchive getById(String id);
}