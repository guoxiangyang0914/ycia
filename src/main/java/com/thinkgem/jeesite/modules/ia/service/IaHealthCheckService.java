/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.entity.IaHealthCheck;
import com.thinkgem.jeesite.modules.ia.dao.IaHealthCheckDao;

/**
 * 健康体检表Service
 * @author yuwl
 * @version 2017-02-14
 */
@Service
@Transactional(readOnly = true)
public class IaHealthCheckService extends CrudService<IaHealthCheckDao, IaHealthCheck> {

	public IaHealthCheck get(String id) {
		return super.get(id);
	}
	
	public IaHealthCheck getByIcId(String icId) {
		return dao.getByIcId(icId);
	}
	
	public List<IaHealthCheck> findList(IaHealthCheck iaHealthCheck) {
		return super.findList(iaHealthCheck);
	}
	
	public Page<IaHealthCheck> findPage(Page<IaHealthCheck> page, IaHealthCheck iaHealthCheck) {
		return super.findPage(page, iaHealthCheck);
	}
	
	@Transactional(readOnly = false)
	public void save(IaHealthCheck iaHealthCheck) {
		super.save(iaHealthCheck);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaHealthCheck iaHealthCheck) {
		super.delete(iaHealthCheck);
	}
	
}