/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.dao;

import java.util.List;

import com.thinkgem.jeesite.common.persistence.CrudDao;
import com.thinkgem.jeesite.common.persistence.annotation.MyBatisDao;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcardDto;

/**
 * yciaDAO接口
 * @author gxy
 * @version 2017-02-07
 */
@MyBatisDao
public interface IaIdcardDao extends CrudDao<IaIdcard> {
	
	public void updateNo(IaIdcard iaIdcard);
	
	public IaIdcard getByCarNo(String cardNo);
	
	public List<IaIdcardDto> getGroupCount(String officeCode);
	
	public IaIdcardDto getTableCount(String officeCode);
}