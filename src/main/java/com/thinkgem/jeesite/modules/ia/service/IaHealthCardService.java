/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.dao.IaHealthCardDao;
import com.thinkgem.jeesite.modules.ia.entity.IaHealthCard;

/**
 * 居民健康档案信息卡Service
 * @author gxy
 * @version 2017-03-22
 */
@Service
@Transactional(readOnly = true)
public class IaHealthCardService extends CrudService<IaHealthCardDao, IaHealthCard> {

	public IaHealthCard get(String id) {
		return super.get(id);
	}
	
	public List<IaHealthCard> findList(IaHealthCard iaHealthCard) {
		return super.findList(iaHealthCard);
	}
	
	public Page<IaHealthCard> findPage(Page<IaHealthCard> page, IaHealthCard iaHealthCard) {
		return super.findPage(page, iaHealthCard);
	}
	
	@Transactional(readOnly = false)
	public void save(IaHealthCard iaHealthCard) {
		super.save(iaHealthCard);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaHealthCard iaHealthCard) {
		super.delete(iaHealthCard);
	}
	
	public IaHealthCard getById(String id) {
		return dao.getById(id);
	}
}