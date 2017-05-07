/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 居民健康档案信息卡Entity
 * @author gxy
 * @version 2017-03-22
 */
public class IaHealthCard extends DataEntity<IaHealthCard> {
	
	private static final long serialVersionUID = 1L;
	private String icId;		// 关联身份证表
	private String name;		// 姓名
	private String sex;		// 性别
	private String birth;		// 出生日期
	private String no;		// 健康档案编号
	private String aobBlood;		// AOB血型
	private String rhBlood;		// RH血型
	private String chronicDisea;		// 慢性病患者情况
	private String allergyHistory;		// 过敏史
	
	public IaHealthCard() {
		super();
	}

	public IaHealthCard(String id){
		super(id);
	}

	@Length(min=0, max=64, message="关联身份证表长度必须介于 0 和 64 之间")
	public String getIcId() {
		return icId;
	}

	public void setIcId(String icId) {
		this.icId = icId;
	}
	
	@Length(min=0, max=64, message="姓名长度必须介于 0 和 64 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=64, message="性别长度必须介于 0 和 64 之间")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Length(min=0, max=64, message="出生日期长度必须介于 0 和 64 之间")
	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	@Length(min=0, max=64, message="健康档案编号长度必须介于 0 和 64 之间")
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}
	
	@Length(min=0, max=64, message="AOB血型长度必须介于 0 和 64 之间")
	public String getAobBlood() {
		return aobBlood;
	}

	public void setAobBlood(String aobBlood) {
		this.aobBlood = aobBlood;
	}
	
	@Length(min=0, max=64, message="RH血型长度必须介于 0 和 64 之间")
	public String getRhBlood() {
		return rhBlood;
	}

	public void setRhBlood(String rhBlood) {
		this.rhBlood = rhBlood;
	}
	
	@Length(min=0, max=64, message="慢性病患者情况长度必须介于 0 和 64 之间")
	public String getChronicDisea() {
		return chronicDisea;
	}

	public void setChronicDisea(String chronicDisea) {
		this.chronicDisea = chronicDisea;
	}
	
	@Length(min=0, max=64, message="过敏史长度必须介于 0 和 64 之间")
	public String getAllergyHistory() {
		return allergyHistory;
	}

	public void setAllergyHistory(String allergyHistory) {
		this.allergyHistory = allergyHistory;
	}
	
}