/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 2型糖尿病患者随访服务记录表Entity
 * @author gxy
 * @version 2017-02-15
 */
public class IaDiabetesVisit extends DataEntity<IaDiabetesVisit> {
	
	private static final long serialVersionUID = 1L;
	private String icId;		// ic_id
	private String name;		// name
	private String no;		// no
	private String followDate;		// 随访日期
	private String followWay;		// 随访方式
	private String symptom;		// 症状
	private String symptomOther;		// 其他症状
	private String bloodPressure;		// 血压（mmHg）
	private String weight;		// 体重
	private String bodyMassIndex;		// 体质指数
	private String dorsalisPedisPulse;		// 足背动脉搏动
	private String other;		// 其他
	private String daySmoking;		// 日吸烟量
	private String dayDrinking;		// 日饮酒量
	private String sports;		// 运动
	private String stapleFood;		// 主食（克/天）
	private String psychologicalAdjustment;		// 心理调整
	private String complianceBehavior;		// 遵医行为
	private String fastingBloodGlucose;		// 空腹血糖值
	private String otherInspection;		// 其他检查
	private String medicationCompliance;		// 服药依从性
	private String adverseDrugReaction;		// 药物不良反应
	private String hypoglycemiaReaction;		// 低血糖反应
	private String followVisitClassification;		// 此次随访分类
	private String medicationSituation;		// 用药情况
	private String referral;		// 转诊
	private String nextFollowDate;		// 下次随访日期
	private String followDoctorSign;		// 随访医生签名
	
	public IaDiabetesVisit() {
		super();
	}

	public IaDiabetesVisit(String id){
		super(id);
	}

	@Length(min=0, max=64, message="ic_id长度必须介于 0 和 64 之间")
	public String getIcId() {
		return icId;
	}

	public void setIcId(String icId) {
		this.icId = icId;
	}
	
	@Length(min=0, max=64, message="name长度必须介于 0 和 64 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=64, message="no长度必须介于 0 和 64 之间")
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}
	
	@Length(min=0, max=64, message="随访日期长度必须介于 0 和 64 之间")
	public String getFollowDate() {
		return followDate;
	}

	public void setFollowDate(String followDate) {
		this.followDate = followDate;
	}
	
	@Length(min=0, max=64, message="随访方式长度必须介于 0 和 64 之间")
	public String getFollowWay() {
		return followWay;
	}

	public void setFollowWay(String followWay) {
		this.followWay = followWay;
	}
	
	@Length(min=0, max=100, message="症状长度必须介于 0 和 100 之间")
	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	
	@Length(min=0, max=500, message="其他症状长度必须介于 0 和 500 之间")
	public String getSymptomOther() {
		return symptomOther;
	}

	public void setSymptomOther(String symptomOther) {
		this.symptomOther = symptomOther;
	}
	
	@Length(min=0, max=64, message="血压（mmHg）长度必须介于 0 和 64 之间")
	public String getBloodPressure() {
		return bloodPressure;
	}

	public void setBloodPressure(String bloodPressure) {
		this.bloodPressure = bloodPressure;
	}
	
	@Length(min=0, max=64, message="体重长度必须介于 0 和 64 之间")
	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	@Length(min=0, max=64, message="体质指数长度必须介于 0 和 64 之间")
	public String getBodyMassIndex() {
		return bodyMassIndex;
	}

	public void setBodyMassIndex(String bodyMassIndex) {
		this.bodyMassIndex = bodyMassIndex;
	}
	
	@Length(min=0, max=64, message="足背动脉搏动长度必须介于 0 和 64 之间")
	public String getDorsalisPedisPulse() {
		return dorsalisPedisPulse;
	}

	public void setDorsalisPedisPulse(String dorsalisPedisPulse) {
		this.dorsalisPedisPulse = dorsalisPedisPulse;
	}
	
	@Length(min=0, max=64, message="其他长度必须介于 0 和 64 之间")
	public String getOther() {
		return other;
	}

	public void setOther(String other) {
		this.other = other;
	}
	
	@Length(min=0, max=50, message="日吸烟量长度必须介于 0 和 50 之间")
	public String getDaySmoking() {
		return daySmoking;
	}

	public void setDaySmoking(String daySmoking) {
		this.daySmoking = daySmoking;
	}
	
	@Length(min=0, max=50, message="日饮酒量长度必须介于 0 和 50 之间")
	public String getDayDrinking() {
		return dayDrinking;
	}

	public void setDayDrinking(String dayDrinking) {
		this.dayDrinking = dayDrinking;
	}
	
	@Length(min=0, max=50, message="运动长度必须介于 0 和 50 之间")
	public String getSports() {
		return sports;
	}

	public void setSports(String sports) {
		this.sports = sports;
	}
	
	@Length(min=0, max=50, message="主食（克/天）长度必须介于 0 和 50 之间")
	public String getStapleFood() {
		return stapleFood;
	}

	public void setStapleFood(String stapleFood) {
		this.stapleFood = stapleFood;
	}
	
	@Length(min=0, max=50, message="心理调整长度必须介于 0 和 50 之间")
	public String getPsychologicalAdjustment() {
		return psychologicalAdjustment;
	}

	public void setPsychologicalAdjustment(String psychologicalAdjustment) {
		this.psychologicalAdjustment = psychologicalAdjustment;
	}
	
	@Length(min=0, max=50, message="遵医行为长度必须介于 0 和 50 之间")
	public String getComplianceBehavior() {
		return complianceBehavior;
	}

	public void setComplianceBehavior(String complianceBehavior) {
		this.complianceBehavior = complianceBehavior;
	}
	
	@Length(min=0, max=50, message="空腹血糖值长度必须介于 0 和 50 之间")
	public String getFastingBloodGlucose() {
		return fastingBloodGlucose;
	}

	public void setFastingBloodGlucose(String fastingBloodGlucose) {
		this.fastingBloodGlucose = fastingBloodGlucose;
	}
	
	@Length(min=0, max=50, message="其他检查长度必须介于 0 和 50 之间")
	public String getOtherInspection() {
		return otherInspection;
	}

	public void setOtherInspection(String otherInspection) {
		this.otherInspection = otherInspection;
	}
	
	@Length(min=0, max=50, message="服药依从性长度必须介于 0 和 50 之间")
	public String getMedicationCompliance() {
		return medicationCompliance;
	}

	public void setMedicationCompliance(String medicationCompliance) {
		this.medicationCompliance = medicationCompliance;
	}
	
	@Length(min=0, max=50, message="药物不良反应长度必须介于 0 和 50 之间")
	public String getAdverseDrugReaction() {
		return adverseDrugReaction;
	}

	public void setAdverseDrugReaction(String adverseDrugReaction) {
		this.adverseDrugReaction = adverseDrugReaction;
	}
	
	@Length(min=0, max=50, message="低血糖反应长度必须介于 0 和 50 之间")
	public String getHypoglycemiaReaction() {
		return hypoglycemiaReaction;
	}

	public void setHypoglycemiaReaction(String hypoglycemiaReaction) {
		this.hypoglycemiaReaction = hypoglycemiaReaction;
	}
	
	@Length(min=0, max=50, message="此次随访分类长度必须介于 0 和 50 之间")
	public String getFollowVisitClassification() {
		return followVisitClassification;
	}

	public void setFollowVisitClassification(String followVisitClassification) {
		this.followVisitClassification = followVisitClassification;
	}
	
	@Length(min=0, max=255, message="用药情况长度必须介于 0 和 255 之间")
	public String getMedicationSituation() {
		return medicationSituation;
	}

	public void setMedicationSituation(String medicationSituation) {
		this.medicationSituation = medicationSituation;
	}
	
	@Length(min=0, max=50, message="转诊长度必须介于 0 和 50 之间")
	public String getReferral() {
		return referral;
	}

	public void setReferral(String referral) {
		this.referral = referral;
	}
	
	@Length(min=0, max=50, message="下次随访日期长度必须介于 0 和 50 之间")
	public String getNextFollowDate() {
		return nextFollowDate;
	}

	public void setNextFollowDate(String nextFollowDate) {
		this.nextFollowDate = nextFollowDate;
	}
	
	@Length(min=0, max=50, message="随访医生签名长度必须介于 0 和 50 之间")
	public String getFollowDoctorSign() {
		return followDoctorSign;
	}

	public void setFollowDoctorSign(String followDoctorSign) {
		this.followDoctorSign = followDoctorSign;
	}
	
}