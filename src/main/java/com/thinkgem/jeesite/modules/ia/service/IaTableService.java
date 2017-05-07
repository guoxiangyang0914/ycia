/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.entity.IaTable;
import com.thinkgem.jeesite.modules.ia.dao.IaTableDao;

/**
 * 居民健康档案表单目录Service
 * @author gxy
 * @version 2017-02-09
 */
@Service
@Transactional(readOnly = true)
public class IaTableService extends CrudService<IaTableDao, IaTable> {

	public IaTable get(String id) {
		return super.get(id);
	}
	
	public List<IaTable> findList(IaTable iaTable) {
		return super.findList(iaTable);
	}
	
	public Page<IaTable> findPage(Page<IaTable> page, IaTable iaTable) {
		return super.findPage(page, iaTable);
	}
	
	@Transactional(readOnly = false)
	public void save(IaTable iaTable) {
		super.save(iaTable);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaTable iaTable) {
		super.delete(iaTable);
	}
	
}