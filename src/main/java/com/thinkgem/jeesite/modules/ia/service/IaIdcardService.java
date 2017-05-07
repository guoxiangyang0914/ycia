/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.service;

import java.util.List;

import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.thinkgem.jeesite.common.persistence.Page;
import com.thinkgem.jeesite.common.service.CrudService;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcard;
import com.thinkgem.jeesite.modules.ia.entity.IaIdcardDto;
import com.thinkgem.jeesite.modules.ia.dao.IaIdcardDao;

/**
 * yciaService
 * @author gxy
 * @version 2017-02-07
 */
@Service
@Transactional(readOnly = true)
public class IaIdcardService extends CrudService<IaIdcardDao, IaIdcard> {

	public IaIdcard get(String id) {
		return super.get(id);
	}
	
	public List<IaIdcard> findList(IaIdcard iaIdcard) {
		return super.findList(iaIdcard);
	}
	
	public Page<IaIdcard> findPage(Page<IaIdcard> page, IaIdcard iaIdcard) {
		return super.findPage(page, iaIdcard);
	}
	
	@Transactional(readOnly = false)
	public void save(IaIdcard iaIdcard) {
		super.save(iaIdcard);
	}
	
	@Transactional(readOnly = false)
	public void delete(IaIdcard iaIdcard) {
		super.delete(iaIdcard);
	}
	
	@Transactional(readOnly = false)
	public void updateNo(IaIdcard iaIdcard){
		dao.updateNo(iaIdcard);
	}
	
	public IaIdcard getByCarNo(String cardNo){
		return dao.getByCarNo(cardNo);
	}
	
	public List<IaIdcardDto> getGroupCount(String officeCode){
		return dao.getGroupCount(officeCode);
	}
	
	public IaIdcardDto getTableCount(String officeCode){
		return dao.getTableCount(officeCode);
	}
}