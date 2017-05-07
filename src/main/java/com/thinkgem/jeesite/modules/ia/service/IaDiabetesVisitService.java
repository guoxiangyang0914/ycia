/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.dao.IaDiabetesVisitDao;
import com.thinkgem.jeesite.modules.ia.entity.IaDiabetesVisit;

/**
 * 2型糖尿病患者随访服务记录表Service
 * @author gxy
 * @version 2017-02-15
 */
@Service
@Transactional(readOnly = true)
public class IaDiabetesVisitService extends CrudService<IaDiabetesVisitDao, IaDiabetesVisit> {

	public IaDiabetesVisit get(String id) {
		return super.get(id);
	}
	
	public List<IaDiabetesVisit> findList(IaDiabetesVisit iaDiabetesVisit) {
		return super.findList(iaDiabetesVisit);
	}
	
	public Page<IaDiabetesVisit> findPage(Page<IaDiabetesVisit> page, IaDiabetesVisit iaDiabetesVisit) {
		return super.findPage(page, iaDiabetesVisit);
	}
	
	@Transactional(readOnly = false)
	public void save(IaDiabetesVisit iaDiabetesVisit) {
		super.save(iaDiabetesVisit);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaDiabetesVisit iaDiabetesVisit) {
		super.delete(iaDiabetesVisit);
	}
	
	public IaDiabetesVisit getById(String id) {
		return dao.getById(id);
	}
}