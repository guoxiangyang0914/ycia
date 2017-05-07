/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * yciaEntity
 * @author gxy
 * @version 2017-02-07
 */
public class IaIdcard extends DataEntity<IaIdcard> {
	
	private static final long serialVersionUID = 1L;
	private String officeId;	//部门id
	private String officeName;	//部门名称
	private String name;		// 姓名
	private String sex;		// 性别
	private String nation;		// 民族
	private String birth;		// 出生年月
	private String address;		// 户籍住址
	private String cardNo;		// 身份证号码
	private String idIssued;		// 签发机关
	private String effectedDate;		// 有效开始日期
	private String expiredDate;		// 有效截止日期
	private String no;			//编号
	private String picture;		// 照片
	
	public IaIdcard() {
		super();
	}

	public IaIdcard(String id){
		super(id);
	}

	@Length(min=0, max=100, message="姓名长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=50, message="性别长度必须介于 0 和 50 之间")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Length(min=0, max=100, message="民族长度必须介于 0 和 100 之间")
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}
	
	@Length(min=0, max=100, message="出生日期长度必须介于 0 和 100 之间")
	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	@Length(min=0, max=200, message="户籍住址长度必须介于 0 和 200 之间")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=0, max=50, message="身份证号码长度必须介于 0 和 50 之间")
	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	
	@Length(min=0, max=100, message="签发机关长度必须介于 0 和 100 之间")
	public String getIdIssued() {
		return idIssued;
	}

	public void setIdIssued(String idIssued) {
		this.idIssued = idIssued;
	}
	
	@Length(min=0, max=100, message="有效开始日期长度必须介于 0 和 100 之间")
	public String getEffectedDate() {
		return effectedDate;
	}

	public void setEffectedDate(String effectedDate) {
		this.effectedDate = effectedDate;
	}
	
	@Length(min=0, max=100, message="有效截止日期长度必须介于 0 和 100 之间")
	public String getExpiredDate() {
		return expiredDate;
	}

	public void setExpiredDate(String expiredDate) {
		this.expiredDate = expiredDate;
	}
	
	@Length(min=0, max=200, message="照片长度必须介于 0 和 200 之间")
	public String getPicture() {
		return picture;
	}

	public void setPicture(String picture) {
		this.picture = picture;
	}

	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}

	public String getOfficeId() {
		return officeId;
	}

	public void setOfficeId(String officeId) {
		this.officeId = officeId;
	}

	public String getOfficeName() {
		return officeName;
	}

	public void setOfficeName(String officeName) {
		this.officeName = officeName;
	}
	
}