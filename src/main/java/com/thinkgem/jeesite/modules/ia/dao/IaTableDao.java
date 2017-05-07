/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.ia.entity.IaTable;

/**
 * 居民健康档案表单目录DAO接口
 * @author gxy
 * @version 2017-02-09
 */
@MyBatisDao
public interface IaTableDao extends CrudDao<IaTable> {
	
}