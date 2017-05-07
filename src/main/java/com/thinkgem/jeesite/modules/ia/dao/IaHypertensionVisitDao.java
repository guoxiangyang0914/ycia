/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.ia.entity.IaHypertensionVisit;

/**
 * 高血压患者随访服务记录表DAO接口
 * @author gxy
 * @version 2017-02-15
 */
@MyBatisDao
public interface IaHypertensionVisitDao extends CrudDao<IaHypertensionVisit> {
	
	public IaHypertensionVisit getById(String id);
}