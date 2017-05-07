/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.ia.entity.IaHealthCheck;

/**
 * 健康体检表DAO接口
 * @author yuwl
 * @version 2017-02-14
 */
@MyBatisDao
public interface IaHealthCheckDao extends CrudDao<IaHealthCheck> {
	
	IaHealthCheck getByIcId(String icId);
	
}