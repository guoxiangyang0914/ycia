/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.dao;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.ia.entity.IaHealthCard;

/**
 * 居民健康档案信息卡DAO接口
 * @author gxy
 * @version 2017-03-22
 */
@MyBatisDao
public interface IaHealthCardDao extends CrudDao<IaHealthCard> {
	
	public IaHealthCard getById(String id);
}