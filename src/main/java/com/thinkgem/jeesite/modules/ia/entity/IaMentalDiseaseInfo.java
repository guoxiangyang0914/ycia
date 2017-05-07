/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 重性精神疾病患者个人信息补充Entity
 * @author gxy
 * @version 2017-02-15
 */
public class IaMentalDiseaseInfo extends DataEntity<IaMentalDiseaseInfo> {
	
	private static final long serialVersionUID = 1L;
	private String icId;		// 关联身份证表
	private String name;		// 姓名
	private String no;		// 编号
	private String guardian;	//监护人
	private String relationship;	//与患者关系
	private String address;		// 监护人住址
	private String tel;		// 监护人电话
	private String committeerTel;		// 辖区村（居）委会联系人、电话
	private String agree;		// 知情同意
	private String firstHappenTime;		// 初次发病时间
	private String mainSymptom;		// 既往主要症状
	private String outpatientDepartment;		// 门诊
	private String hospitalization;		// 住院
	private String currentDiagnosis;		// 目前诊断情况
	private String recentTreatmentEffect;		// 最后一次治疗效果
	private String impactFamilySociety;		// 患病对家庭社会的影响
	private String lockCondition;		// 关锁情况
	private String economicSituation;		// 经济状况
	private String specialistOpinion;		// 专科医生的意见
	private String fillDate;		// 填表日期
	private String doctorSignature;		// 医生签字
	
	public IaMentalDiseaseInfo() {
		super();
	}

	public IaMentalDiseaseInfo(String id){
		super(id);
	}

	@Length(min=0, max=64, message="关联身份证表长度必须介于 0 和 64 之间")
	public String getIcId() {
		return icId;
	}

	public void setIcId(String icId) {
		this.icId = icId;
	}
	
	@Length(min=0, max=100, message="姓名长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=100, message="编号长度必须介于 0 和 100 之间")
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}
	
	@Length(min=0, max=200, message="监护人住址长度必须介于 0 和 200 之间")
	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}
	
	@Length(min=0, max=100, message="监护人电话长度必须介于 0 和 100 之间")
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}
	
	@Length(min=0, max=100, message="辖区村（居）委会联系人、电话长度必须介于 0 和 100 之间")
	public String getCommitteerTel() {
		return committeerTel;
	}

	public void setCommitteerTel(String committeerTel) {
		this.committeerTel = committeerTel;
	}
	
	@Length(min=0, max=50, message="知情同意长度必须介于 0 和 50 之间")
	public String getAgree() {
		return agree;
	}

	public void setAgree(String agree) {
		this.agree = agree;
	}
	
	@Length(min=0, max=50, message="初次发病时间长度必须介于 0 和 50 之间")
	public String getFirstHappenTime() {
		return firstHappenTime;
	}

	public void setFirstHappenTime(String firstHappenTime) {
		this.firstHappenTime = firstHappenTime;
	}
	
	@Length(min=0, max=50, message="既往主要症状长度必须介于 0 和 50 之间")
	public String getMainSymptom() {
		return mainSymptom;
	}

	public void setMainSymptom(String mainSymptom) {
		this.mainSymptom = mainSymptom;
	}
	
	@Length(min=0, max=50, message="门诊长度必须介于 0 和 50 之间")
	public String getOutpatientDepartment() {
		return outpatientDepartment;
	}

	public void setOutpatientDepartment(String outpatientDepartment) {
		this.outpatientDepartment = outpatientDepartment;
	}
	
	@Length(min=0, max=50, message="住院长度必须介于 0 和 50 之间")
	public String getHospitalization() {
		return hospitalization;
	}

	public void setHospitalization(String hospitalization) {
		this.hospitalization = hospitalization;
	}
	
	@Length(min=0, max=50, message="目前诊断情况长度必须介于 0 和 50 之间")
	public String getCurrentDiagnosis() {
		return currentDiagnosis;
	}

	public void setCurrentDiagnosis(String currentDiagnosis) {
		this.currentDiagnosis = currentDiagnosis;
	}
	
	@Length(min=0, max=50, message="最后一次治疗效果长度必须介于 0 和 50 之间")
	public String getRecentTreatmentEffect() {
		return recentTreatmentEffect;
	}

	public void setRecentTreatmentEffect(String recentTreatmentEffect) {
		this.recentTreatmentEffect = recentTreatmentEffect;
	}
	
	@Length(min=0, max=50, message="患病对家庭社会的影响长度必须介于 0 和 50 之间")
	public String getImpactFamilySociety() {
		return impactFamilySociety;
	}

	public void setImpactFamilySociety(String impactFamilySociety) {
		this.impactFamilySociety = impactFamilySociety;
	}
	
	@Length(min=0, max=50, message="关锁情况长度必须介于 0 和 50 之间")
	public String getLockCondition() {
		return lockCondition;
	}

	public void setLockCondition(String lockCondition) {
		this.lockCondition = lockCondition;
	}
	
	@Length(min=0, max=50, message="经济状况长度必须介于 0 和 50 之间")
	public String getEconomicSituation() {
		return economicSituation;
	}

	public void setEconomicSituation(String economicSituation) {
		this.economicSituation = economicSituation;
	}
	
	@Length(min=0, max=50, message="专科医生的意见长度必须介于 0 和 50 之间")
	public String getSpecialistOpinion() {
		return specialistOpinion;
	}

	public void setSpecialistOpinion(String specialistOpinion) {
		this.specialistOpinion = specialistOpinion;
	}
	
	@Length(min=0, max=50, message="填表日期长度必须介于 0 和 50 之间")
	public String getFillDate() {
		return fillDate;
	}

	public void setFillDate(String fillDate) {
		this.fillDate = fillDate;
	}
	
	@Length(min=0, max=50, message="医生签字长度必须介于 0 和 50 之间")
	public String getDoctorSignature() {
		return doctorSignature;
	}

	public void setDoctorSignature(String doctorSignature) {
		this.doctorSignature = doctorSignature;
	}

	public String getGuardian() {
		return guardian;
	}

	public void setGuardian(String guardian) {
		this.guardian = guardian;
	}

	public String getRelationship() {
		return relationship;
	}

	public void setRelationship(String relationship) {
		this.relationship = relationship;
	}
	
}