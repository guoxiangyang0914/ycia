/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.entity.IaHealthArchive;
import com.thinkgem.jeesite.modules.ia.dao.IaHealthArchiveDao;

/**
 * 居民健康档案Service
 * @author gxy
 * @version 2017-02-08
 */
@Service
@Transactional(readOnly = true)
public class IaHealthArchiveService extends CrudService<IaHealthArchiveDao, IaHealthArchive> {

	public IaHealthArchive get(String id) {
		return super.get(id);
	}
	
	public List<IaHealthArchive> findList(IaHealthArchive iaHealthArchive) {
		return super.findList(iaHealthArchive);
	}
	
	public Page<IaHealthArchive> findPage(Page<IaHealthArchive> page, IaHealthArchive iaHealthArchive) {
		return super.findPage(page, iaHealthArchive);
	}
	
	@Transactional(readOnly = false)
	public void save(IaHealthArchive iaHealthArchive) {
		super.save(iaHealthArchive);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaHealthArchive iaHealthArchive) {
		super.delete(iaHealthArchive);
	}
	
	public IaHealthArchive getById(String id) {
		return dao.getById(id);
	}
}