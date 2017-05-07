/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.dao.IaBaseInfoDao;
import com.thinkgem.jeesite.modules.ia.entity.IaBaseInfo;

/**
 * 个人基本信息Service
 * @author gxy
 * @version 2017-02-09
 */
@Service
@Transactional(readOnly = true)
public class IaBaseInfoService extends CrudService<IaBaseInfoDao, IaBaseInfo> {

	public IaBaseInfo get(String id) {
		return super.get(id);
	}
	
	public List<IaBaseInfo> findList(IaBaseInfo iaBaseInfo) {
		return super.findList(iaBaseInfo);
	}
	
	public Page<IaBaseInfo> findPage(Page<IaBaseInfo> page, IaBaseInfo iaBaseInfo) {
		return super.findPage(page, iaBaseInfo);
	}
	
	@Transactional(readOnly = false)
	public void save(IaBaseInfo iaBaseInfo) {
		super.save(iaBaseInfo);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaBaseInfo iaBaseInfo) {
		super.delete(iaBaseInfo);
	}
	
	public IaBaseInfo getById(String id) {
		return dao.getById(id);
	}
}