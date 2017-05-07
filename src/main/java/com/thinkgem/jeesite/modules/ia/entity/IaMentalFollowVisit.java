/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;

/**
 * 重性精神疾病患者随访服务记录表Entity
 * @author gxy
 * @version 2017-02-15
 */
public class IaMentalFollowVisit extends DataEntity<IaMentalFollowVisit> {
	
	private static final long serialVersionUID = 1L;
	private String icId;		// ic_id
	private String name;		// name
	private String no;		// no
	private String anyTime;		// 随访日期
	private String danger;		// 危险性
	private String currentSymptoms;		// 目前症状
	private String insight;		// 自知力
	private String sleepCondition;		// 睡眠情况
	private String dietSituation;		// 饮食情况
	private String personalLifestyle;		// 个人生活料理
	private String housework;		// 家务劳动
	private String productiveWork;		// 生产劳动及工作
	private String learningAbility;		// 学习能力
	private String interpersonalCommunication;		// 社会人际交往
	private String impactFamilySociety;		// 患病对家庭社会的影响
	private String lockCondition;		// 关锁情况
	private String hospitalization;		// 住院情况
	private String laboratoryExamination;		// 实验室检查
	private String medicationCompliance;		// 服药依从性
	private String adverseDrugReaction;		// 药物不良反应
	private String treatmentEffect;		// 治疗效果
	private String whetherReferral;		// 是否转诊
	private String medicationSituation;		// 用药情况
	private String rehabilitationMeasures;		// 康复措施
	private String followVisitClassification;		// 本次随访分类
	private String nextFollowDate;		// 下次随访日期
	private String followDoctorSign;		// 随访医生签名
	
	public IaMentalFollowVisit() {
		super();
	}

	public IaMentalFollowVisit(String id){
		super(id);
	}

	@Length(min=0, max=64, message="ic_id长度必须介于 0 和 64 之间")
	public String getIcId() {
		return icId;
	}

	public void setIcId(String icId) {
		this.icId = icId;
	}
	
	@Length(min=0, max=100, message="name长度必须介于 0 和 100 之间")
	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Length(min=0, max=100, message="no长度必须介于 0 和 100 之间")
	public String getNo() {
		return no;
	}

	public void setNo(String no) {
		this.no = no;
	}
	
	@Length(min=0, max=50, message="随访日期长度必须介于 0 和 50 之间")
	public String getAnyTime() {
		return anyTime;
	}

	public void setAnyTime(String anyTime) {
		this.anyTime = anyTime;
	}
	
	@Length(min=0, max=50, message="危险性长度必须介于 0 和 50 之间")
	public String getDanger() {
		return danger;
	}

	public void setDanger(String danger) {
		this.danger = danger;
	}
	
	@Length(min=0, max=50, message="目前症状长度必须介于 0 和 50 之间")
	public String getCurrentSymptoms() {
		return currentSymptoms;
	}

	public void setCurrentSymptoms(String currentSymptoms) {
		this.currentSymptoms = currentSymptoms;
	}
	
	@Length(min=0, max=50, message="自知力长度必须介于 0 和 50 之间")
	public String getInsight() {
		return insight;
	}

	public void setInsight(String insight) {
		this.insight = insight;
	}
	
	@Length(min=0, max=50, message="睡眠情况长度必须介于 0 和 50 之间")
	public String getSleepCondition() {
		return sleepCondition;
	}

	public void setSleepCondition(String sleepCondition) {
		this.sleepCondition = sleepCondition;
	}
	
	@Length(min=0, max=50, message="饮食情况长度必须介于 0 和 50 之间")
	public String getDietSituation() {
		return dietSituation;
	}

	public void setDietSituation(String dietSituation) {
		this.dietSituation = dietSituation;
	}
	
	@Length(min=0, max=50, message="个人生活料理长度必须介于 0 和 50 之间")
	public String getPersonalLifestyle() {
		return personalLifestyle;
	}

	public void setPersonalLifestyle(String personalLifestyle) {
		this.personalLifestyle = personalLifestyle;
	}
	
	@Length(min=0, max=50, message="家务劳动长度必须介于 0 和 50 之间")
	public String getHousework() {
		return housework;
	}

	public void setHousework(String housework) {
		this.housework = housework;
	}
	
	@Length(min=0, max=50, message="生产劳动及工作长度必须介于 0 和 50 之间")
	public String getProductiveWork() {
		return productiveWork;
	}

	public void setProductiveWork(String productiveWork) {
		this.productiveWork = productiveWork;
	}
	
	@Length(min=0, max=50, message="学习能力长度必须介于 0 和 50 之间")
	public String getLearningAbility() {
		return learningAbility;
	}

	public void setLearningAbility(String learningAbility) {
		this.learningAbility = learningAbility;
	}
	
	@Length(min=0, max=50, message="社会人际交往长度必须介于 0 和 50 之间")
	public String getInterpersonalCommunication() {
		return interpersonalCommunication;
	}

	public void setInterpersonalCommunication(String interpersonalCommunication) {
		this.interpersonalCommunication = interpersonalCommunication;
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
	
	@Length(min=0, max=50, message="住院情况长度必须介于 0 和 50 之间")
	public String getHospitalization() {
		return hospitalization;
	}

	public void setHospitalization(String hospitalization) {
		this.hospitalization = hospitalization;
	}
	
	@Length(min=0, max=50, message="实验室检查长度必须介于 0 和 50 之间")
	public String getLaboratoryExamination() {
		return laboratoryExamination;
	}

	public void setLaboratoryExamination(String laboratoryExamination) {
		this.laboratoryExamination = laboratoryExamination;
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
	
	@Length(min=0, max=50, message="治疗效果长度必须介于 0 和 50 之间")
	public String getTreatmentEffect() {
		return treatmentEffect;
	}

	public void setTreatmentEffect(String treatmentEffect) {
		this.treatmentEffect = treatmentEffect;
	}
	
	@Length(min=0, max=50, message="是否转诊长度必须介于 0 和 50 之间")
	public String getWhetherReferral() {
		return whetherReferral;
	}

	public void setWhetherReferral(String whetherReferral) {
		this.whetherReferral = whetherReferral;
	}
	
	@Length(min=0, max=50, message="用药情况长度必须介于 0 和 50 之间")
	public String getMedicationSituation() {
		return medicationSituation;
	}

	public void setMedicationSituation(String medicationSituation) {
		this.medicationSituation = medicationSituation;
	}
	
	@Length(min=0, max=50, message="康复措施长度必须介于 0 和 50 之间")
	public String getRehabilitationMeasures() {
		return rehabilitationMeasures;
	}

	public void setRehabilitationMeasures(String rehabilitationMeasures) {
		this.rehabilitationMeasures = rehabilitationMeasures;
	}
	
	@Length(min=0, max=50, message="本次随访分类长度必须介于 0 和 50 之间")
	public String getFollowVisitClassification() {
		return followVisitClassification;
	}

	public void setFollowVisitClassification(String followVisitClassification) {
		this.followVisitClassification = followVisitClassification;
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