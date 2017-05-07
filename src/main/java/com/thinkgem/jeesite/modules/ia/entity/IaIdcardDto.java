/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * yciaEntity
 * @author gxy
 * @version 2017-02-07
 */
public class IaIdcardDto extends DataEntity<IaIdcardDto> {
	
	private static final long serialVersionUID = 1L;
	private String officeName;	//部门名称
	private String count;	//分组统计
	private String total;	//总数
	private String officeId;
	private String archiveCount;
	private String baseCount;
	private String checkCount;
	private String hypertensionCount;
	private String diabetesCount;
	private String diseaseCount;
	private String mentalFollowCount;
	
	public IaIdcardDto() {
		super();
	}

	public IaIdcardDto(String id){
		super(id);
	}

	public String getOfficeName() {
		return officeName;
	}

	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}

	public String getCount() {
		return count;
	}

	public void setCount(String count) {
		this.count = count;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getOfficeId() {
		return officeId;
	}

	public void setOfficeId(String officeId) {
		this.officeId = officeId;
	}

	public String getArchiveCount() {
		return archiveCount;
	}

	public void setArchiveCount(String archiveCount) {
		this.archiveCount = archiveCount;
	}

	public String getBaseCount() {
		return baseCount;
	}

	public void setBaseCount(String baseCount) {
		this.baseCount = baseCount;
	}

	public String getCheckCount() {
		return checkCount;
	}

	public void setCheckCount(String checkCount) {
		this.checkCount = checkCount;
	}

	public String getHypertensionCount() {
		return hypertensionCount;
	}

	public void setHypertensionCount(String hypertensionCount) {
		this.hypertensionCount = hypertensionCount;
	}

	public String getDiabetesCount() {
		return diabetesCount;
	}

	public void setDiabetesCount(String diabetesCount) {
		this.diabetesCount = diabetesCount;
	}

	public String getDiseaseCount() {
		return diseaseCount;
	}

	public void setDiseaseCount(String diseaseCount) {
		this.diseaseCount = diseaseCount;
	}

	public String getMentalFollowCount() {
		return mentalFollowCount;
	}

	public void setMentalFollowCount(String mentalFollowCount) {
		this.mentalFollowCount = mentalFollowCount;
	}
	
}