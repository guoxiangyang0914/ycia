/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 居民健康档案Entity
 * @author gxy
 * @version 2017-02-08
 */
public class IaHealthArchive extends DataEntity<IaHealthArchive> {
	
	private static final long serialVersionUID = 1L;
	private String icId;		// 关联身份证表
	private String no;		// 编号
	private String name;		// 姓名
	private String curAddress;		// 现住址
	private String address;		// 户籍住址
	private String tel;		// 联系电话
	private String town;		// 乡镇（街道）名称
	private String committee;		// 村（居）委会名称
	private String buildUnit;		// 建档单位
	private String buildBy;		// 建档人
	private String doctor;		// 责任医生
	private String buildYear;		// 建档年
	private String buildMonth;		// 建档月
	private String buildDay;		// 建档日
	
	public IaHealthArchive() {
		super();
	}

	public IaHealthArchive(String id){
		super(id);
	}

	@Length(min=0, max=64, message="关联身份证表长度必须介于 0 和 64 之间")
	public String getIcId() {
		return icId;
	}

	public void setIcId(String icId) {
		this.icId = icId;
	}
	
	@Length(min=0, max=100, message="编号长度必须介于 0 和 100 之间")
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}
	
	@Length(min=0, max=100, message="姓名长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=200, message="现住址长度必须介于 0 和 200 之间")
	public String getCurAddress() {
		return curAddress;
	}

	public void setCurAddress(String curAddress) {
		this.curAddress = curAddress;
	}
	
	@Length(min=0, max=200, message="户籍住址长度必须介于 0 和 200 之间")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=0, max=100, message="联系电话长度必须介于 0 和 100 之间")
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Length(min=0, max=100, message="乡镇（街道）名称长度必须介于 0 和 100 之间")
	public String getTown() {
		return town;
	}

	public void setTown(String town) {
		this.town = town;
	}
	
	@Length(min=0, max=100, message="村（居）委会名称长度必须介于 0 和 100 之间")
	public String getCommittee() {
		return committee;
	}

	public void setCommittee(String committee) {
		this.committee = committee;
	}
	
	@Length(min=0, max=100, message="建档单位长度必须介于 0 和 100 之间")
	public String getBuildUnit() {
		return buildUnit;
	}

	public void setBuildUnit(String buildUnit) {
		this.buildUnit = buildUnit;
	}
	
	@Length(min=0, max=100, message="建档人长度必须介于 0 和 100 之间")
	public String getBuildBy() {
		return buildBy;
	}

	public void setBuildBy(String buildBy) {
		this.buildBy = buildBy;
	}
	
	@Length(min=0, max=100, message="责任医生长度必须介于 0 和 100 之间")
	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}

	public String getBuildYear() {
		return buildYear;
	}

	public void setBuildYear(String buildYear) {
		this.buildYear = buildYear;
	}

	public String getBuildMonth() {
		return buildMonth;
	}

	public void setBuildMonth(String buildMonth) {
		this.buildMonth = buildMonth;
	}

	public String getBuildDay() {
		return buildDay;
	}

	public void setBuildDay(String buildDay) {
		this.buildDay = buildDay;
	}
	
	
	
}