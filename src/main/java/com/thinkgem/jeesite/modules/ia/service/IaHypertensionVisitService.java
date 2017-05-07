/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.dao.IaHypertensionVisitDao;
import com.thinkgem.jeesite.modules.ia.entity.IaHypertensionVisit;

/**
 * 高血压患者随访服务记录表Service
 * @author gxy
 * @version 2017-02-15
 */
@Service
@Transactional(readOnly = true)
public class IaHypertensionVisitService extends CrudService<IaHypertensionVisitDao, IaHypertensionVisit> {

	public IaHypertensionVisit get(String id) {
		return super.get(id);
	}
	
	public List<IaHypertensionVisit> findList(IaHypertensionVisit iaHypertensionVisit) {
		return super.findList(iaHypertensionVisit);
	}
	
	public Page<IaHypertensionVisit> findPage(Page<IaHypertensionVisit> page, IaHypertensionVisit iaHypertensionVisit) {
		return super.findPage(page, iaHypertensionVisit);
	}
	
	@Transactional(readOnly = false)
	public void save(IaHypertensionVisit iaHypertensionVisit) {
		super.save(iaHypertensionVisit);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaHypertensionVisit iaHypertensionVisit) {
		super.delete(iaHypertensionVisit);
	}
	
	public IaHypertensionVisit getById(String id) {
		return dao.getById(id);
	}
}