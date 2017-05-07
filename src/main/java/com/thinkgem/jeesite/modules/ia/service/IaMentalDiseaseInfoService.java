/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.dao.IaMentalDiseaseInfoDao;
import com.thinkgem.jeesite.modules.ia.entity.IaMentalDiseaseInfo;

/**
 * 重性精神疾病患者个人信息补充Service
 * @author gxy
 * @version 2017-02-15
 */
@Service
@Transactional(readOnly = true)
public class IaMentalDiseaseInfoService extends CrudService<IaMentalDiseaseInfoDao, IaMentalDiseaseInfo> {

	public IaMentalDiseaseInfo get(String id) {
		return super.get(id);
	}
	
	public List<IaMentalDiseaseInfo> findList(IaMentalDiseaseInfo iaMentalDiseaseInfo) {
		return super.findList(iaMentalDiseaseInfo);
	}
	
	public Page<IaMentalDiseaseInfo> findPage(Page<IaMentalDiseaseInfo> page, IaMentalDiseaseInfo iaMentalDiseaseInfo) {
		return super.findPage(page, iaMentalDiseaseInfo);
	}
	
	@Transactional(readOnly = false)
	public void save(IaMentalDiseaseInfo iaMentalDiseaseInfo) {
		super.save(iaMentalDiseaseInfo);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaMentalDiseaseInfo iaMentalDiseaseInfo) {
		super.delete(iaMentalDiseaseInfo);
	}
	
	public IaMentalDiseaseInfo getById(String id) {
		return dao.getById(id);
	}
}