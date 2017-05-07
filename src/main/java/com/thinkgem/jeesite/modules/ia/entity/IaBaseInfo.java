/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 个人基本信息Entity
 * @author gxy
 * @version 2017-02-09
 */
public class IaBaseInfo extends DataEntity<IaBaseInfo> {
	
	private static final long serialVersionUID = 1L;
	private String icId;		// 关联身份证表
	private String no;		// 编号
	private String name;		// 姓名
	private String sex;		// 性别
	private String birth;		// 出生日期
	private String cardNo;		// 身份证号
	private String workUnit;		// 工作单位
	private String tel;		// 本人电话
	private String linkman;		// 联系人姓名
	private String linkmanTel;		// 联系人电话
	private String resident;		// 常住类型（1：户籍，2：非户籍）
	private String nation;		// 民族（1或其它）
	private String blood;		// 血型（数据字典）
	private String rhf;		// RH阴性（1：否，2：是，3：不详）
	private String culture;		// 文化程度（数据字典）
	private String profession;		// 职业（数据字典）
	private String marriage;		// 婚姻状况（数据字典）
	private String payType;		// 医疗费用支付方式（数据字典，1,3,5,其它）
	private String drugAllergy;		// 药物过敏史（数据字典|直存，逗号分隔）
	private String exposure;		// 暴露史（数据字典）
	private String disease;		// 疾病（数据字典，数字_时间，其它，逗号分隔）
	private String operation;		// 手术（1：无，2：有&mdash;&mdash;名称_时间，逗号分隔）
	private String trauma;		// 外伤（1：无，2：有）
	private String transfusion;		// 输血（1：无，2：有）
	private String family;		// 家族史（数据字典，1_1,3,5,其它|2_2,4,6,其它）
	private String genetic;		// 遗传病史（1：无，2：有&mdash;&mdash;其它）
	private String disability;		// 残疾情况（数据字典，1,3,5,其它）
	private String kitchen;		// 厨房排风设施（数据字典）
	private String fuelType;		// 燃料类型（数据字典）
	private String drink;		// 饮水（数据字典）
	private String wc;		// 厕所（数据字典）
	private String livestock;		// 禽畜栏（数据字典）
	
	public IaBaseInfo() {
		super();
	}

	public IaBaseInfo(String id){
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
	
	@Length(min=0, max=10, message="性别长度必须介于 0 和 10 之间")
	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}
	
	@Length(min=0, max=50, message="出生日期长度必须介于 0 和 50 之间")
	public String getBirth() {
		return birth;
	}

	public void setBirth(String birth) {
		this.birth = birth;
	}
	
	@Length(min=0, max=50, message="身份证号长度必须介于 0 和 50 之间")
	public String getCardNo() {
		return cardNo;
	}

	public void setCardNo(String cardNo) {
		this.cardNo = cardNo;
	}
	
	@Length(min=0, max=100, message="工作单位长度必须介于 0 和 100 之间")
	public String getWorkUnit() {
		return workUnit;
	}

	public void setWorkUnit(String workUnit) {
		this.workUnit = workUnit;
	}
	
	@Length(min=0, max=100, message="本人电话长度必须介于 0 和 100 之间")
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Length(min=0, max=100, message="联系人姓名长度必须介于 0 和 100 之间")
	public String getLinkman() {
		return linkman;
	}

	public void setLinkman(String linkman) {
		this.linkman = linkman;
	}
	
	@Length(min=0, max=100, message="联系人电话长度必须介于 0 和 100 之间")
	public String getLinkmanTel() {
		return linkmanTel;
	}

	public void setLinkmanTel(String linkmanTel) {
		this.linkmanTel = linkmanTel;
	}
	
	@Length(min=0, max=10, message="常住类型（1：户籍，2：非户籍）长度必须介于 0 和 10 之间")
	public String getResident() {
		return resident;
	}

	public void setResident(String resident) {
		this.resident = resident;
	}
	
	@Length(min=0, max=100, message="民族（1或其它）长度必须介于 0 和 100 之间")
	public String getNation() {
		return nation;
	}

	public void setNation(String nation) {
		this.nation = nation;
	}
	
	@Length(min=0, max=10, message="血型（数据字典）长度必须介于 0 和 10 之间")
	public String getBlood() {
		return blood;
	}

	public void setBlood(String blood) {
		this.blood = blood;
	}
	
	@Length(min=0, max=10, message="RH阴性（1：否，2：是，3：不详）长度必须介于 0 和 10 之间")
	public String getRhf() {
		return rhf;
	}

	public void setRhf(String rhf) {
		this.rhf = rhf;
	}
	
	@Length(min=0, max=10, message="文化程度（数据字典）长度必须介于 0 和 10 之间")
	public String getCulture() {
		return culture;
	}

	public void setCulture(String culture) {
		this.culture = culture;
	}
	
	@Length(min=0, max=10, message="职业（数据字典）长度必须介于 0 和 10 之间")
	public String getProfession() {
		return profession;
	}

	public void setProfession(String profession) {
		this.profession = profession;
	}
	
	@Length(min=0, max=10, message="婚姻状况（数据字典）长度必须介于 0 和 10 之间")
	public String getMarriage() {
		return marriage;
	}

	public void setMarriage(String marriage) {
		this.marriage = marriage;
	}
	
	@Length(min=0, max=100, message="医疗费用支付方式（数据字典，1,3,5,其它）长度必须介于 0 和 100 之间")
	public String getPayType() {
		return payType;
	}

	public void setPayType(String payType) {
		this.payType = payType;
	}
	
	@Length(min=0, max=10, message="药物过敏史（数据字典|直存，逗号分隔）长度必须介于 0 和 10 之间")
	public String getDrugAllergy() {
		return drugAllergy;
	}

	public void setDrugAllergy(String drugAllergy) {
		this.drugAllergy = drugAllergy;
	}
	
	@Length(min=0, max=10, message="暴露史（数据字典）长度必须介于 0 和 10 之间")
	public String getExposure() {
		return exposure;
	}

	public void setExposure(String exposure) {
		this.exposure = exposure;
	}
	
	@Length(min=0, max=10, message="疾病（数据字典，数字_时间，其它，逗号分隔）长度必须介于 0 和 10 之间")
	public String getDisease() {
		return disease;
	}

	public void setDisease(String disease) {
		this.disease = disease;
	}
	
	@Length(min=0, max=10, message="手术（1：无，2：有&mdash;&mdash;名称_时间，逗号分隔）长度必须介于 0 和 10 之间")
	public String getOperation() {
		return operation;
	}

	public void setOperation(String operation) {
		this.operation = operation;
	}
	
	@Length(min=0, max=10, message="外伤（1：无，2：有）长度必须介于 0 和 10 之间")
	public String getTrauma() {
		return trauma;
	}

	public void setTrauma(String trauma) {
		this.trauma = trauma;
	}
	
	@Length(min=0, max=10, message="输血（1：无，2：有）长度必须介于 0 和 10 之间")
	public String getTransfusion() {
		return transfusion;
	}

	public void setTransfusion(String transfusion) {
		this.transfusion = transfusion;
	}
	
	@Length(min=0, max=10, message="家族史（数据字典，1_1,3,5,其它|2_2,4,6,其它）长度必须介于 0 和 10 之间")
	public String getFamily() {
		return family;
	}

	public void setFamily(String family) {
		this.family = family;
	}
	
	@Length(min=0, max=10, message="遗传病史（1：无，2：有&mdash;&mdash;其它）长度必须介于 0 和 10 之间")
	public String getGenetic() {
		return genetic;
	}

	public void setGenetic(String genetic) {
		this.genetic = genetic;
	}
	
	@Length(min=0, max=10, message="残疾情况（数据字典，1,3,5,其它）长度必须介于 0 和 10 之间")
	public String getDisability() {
		return disability;
	}

	public void setDisability(String disability) {
		this.disability = disability;
	}
	
	@Length(min=0, max=10, message="厨房排风设施（数据字典）长度必须介于 0 和 10 之间")
	public String getKitchen() {
		return kitchen;
	}

	public void setKitchen(String kitchen) {
		this.kitchen = kitchen;
	}
	
	@Length(min=0, max=10, message="燃料类型（数据字典）长度必须介于 0 和 10 之间")
	public String getFuelType() {
		return fuelType;
	}

	public void setFuelType(String fuelType) {
		this.fuelType = fuelType;
	}
	
	@Length(min=0, max=10, message="饮水（数据字典）长度必须介于 0 和 10 之间")
	public String getDrink() {
		return drink;
	}

	public void setDrink(String drink) {
		this.drink = drink;
	}
	
	@Length(min=0, max=10, message="厕所（数据字典）长度必须介于 0 和 10 之间")
	public String getWc() {
		return wc;
	}

	public void setWc(String wc) {
		this.wc = wc;
	}
	
	@Length(min=0, max=10, message="禽畜栏（数据字典）长度必须介于 0 和 10 之间")
	public String getLivestock() {
		return livestock;
	}

	public void setLivestock(String livestock) {
		this.livestock = livestock;
	}
	
}