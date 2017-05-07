/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.dao.IaMentalFollowVisitDao;
import com.thinkgem.jeesite.modules.ia.entity.IaMentalFollowVisit;

/**
 * 重性精神疾病患者随访服务记录表Service
 * @author gxy
 * @version 2017-02-15
 */
@Service
@Transactional(readOnly = true)
public class IaMentalFollowVisitService extends CrudService<IaMentalFollowVisitDao, IaMentalFollowVisit> {

	public IaMentalFollowVisit get(String id) {
		return super.get(id);
	}
	
	public List<IaMentalFollowVisit> findList(IaMentalFollowVisit iaMentalFollowVisit) {
		return super.findList(iaMentalFollowVisit);
	}
	
	public Page<IaMentalFollowVisit> findPage(Page<IaMentalFollowVisit> page, IaMentalFollowVisit iaMentalFollowVisit) {
		return super.findPage(page, iaMentalFollowVisit);
	}
	
	@Transactional(readOnly = false)
	public void save(IaMentalFollowVisit iaMentalFollowVisit) {
		super.save(iaMentalFollowVisit);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaMentalFollowVisit iaMentalFollowVisit) {
		super.delete(iaMentalFollowVisit);
	}
	
	public IaMentalFollowVisit getById(String id) {
		return dao.getById(id);
	}
}