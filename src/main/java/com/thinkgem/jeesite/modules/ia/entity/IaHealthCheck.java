/**
 * Copyright &copy; 2012-2016 <a href="https://github.com/thinkgem/jeesite">JeeSite</a> All rights reserved.
 */
package com.thinkgem.jeesite.modules.ia.entity;

import org.hibernate.validator.constraints.Length;

import com.thinkgem.jeesite.common.persistence.DataEntity;


/**
 * 健康体检表Entity
 * @author yuwl
 * @version 2017-02-14
 */
public class IaHealthCheck extends DataEntity<IaHealthCheck> {
	
	private static final long serialVersionUID = 1L;
	private String icId;		// 关联身份证表
	private String name;		// 姓名
	private String no;		// 编号
	private String checkDate;		// 体检日期
	private String doctor;		// 责任医生
	private String symptom;		// 症状（数据字典，多个以，分隔）
	private String animalHeat;		// 体温
	private String pulseRate;		// 脉率
	private String respiratoryRate;		// 呼吸频率
	private String bloodLeft;		// 左侧血压，低/高区分（json串）
	private String bloodRight;		// 左侧血压，低/高区分（暂不用）
	private String height;		// 身高
	private String weight;		// 体重
	private String waist;		// 腰围
	private String bmi;		// 体质指数（BMI）
	private String healthAssessment;		// 老年人健康状态自我评估（数据字典）
	private String abilityAssessment;		// 老年人生活自理能力自我评估（数据字典）
	private String knowAbility;		// 老年人认识能力
	private String emotion;		// 老年人情感状态
	private String physicalTraining;		// 体育锻炼（_拼接）
	private String eatingHabits;		// 饮食习惯（,拼接）
	private String smokingCondition;		// 吸烟情况（_拼接）
	private String drinkingCondition;		// 饮酒情况（_拼接）
	private String occupationalHazard;		// 职业病危害因素接触史（_拼接）
	private String mouth;		// 口腔（json串）
	private String eyesight;		// 视力
	private String listening;		// 听力（数据字典）
	private String motorFunction;		// 运动功能（数据字典）
	private String fundus;		// 眼底（_拼接）
	private String skin;		// 皮肤（_拼接）
	private String sclera;		// 巩膜（_拼接）
	private String lymphNode;		// 淋巴结（_拼接）
	private String lung;		// 肺（_拼接）
	private String heart;		// 心脏（_拼接）
	private String abdomen;		// 腹部（_拼接）
	private String legsEdema;		// 下肢水肿（数据字典）
	private String dorsalisPedis;		// 足背动脉搏动（数据字典）
	private String dre;		// 肛门指诊（_拼接）
	private String breast;		// 乳腺（_拼接）
	private String gynecology;		// 妇科（_拼接）
	private String physicalOther;		// 查体其它
	private String bloodRoutine;		// 血常规（_拼接）
	private String urineRoutine;		// 尿常规（_拼接）
	private String glu;		// 空腹血糖（_拼接）
	private String ecg;		// 心电图（_拼接）
	private String mau;		// 尿微量白蛋白
	private String occultBlood;		// 大便潜血
	private String glycatedHemoglobin;		// 糖化血红蛋白
	private String hbsag;		// 乙型肝炎表面抗原（数据字典）
	private String liverFunction;		// 肝功能（,拼接）
	private String renalFunction;		// 肾功能（,拼接）
	private String bloodFat;		// 血脂（,拼接）
	private String chestXray;		// 胸部X线片（,拼接）
	private String bultrasound;		// B超（,拼接）
	private String papSmear;		// 宫颈涂片（,拼接）
	private String assistantOther;		// 辅助检查其它
	private String bibu;		// 中医体质辨识（,拼接）
	private String cerebrovascular;		// 脑血管疾病(,拼接)
	private String kidney;		// 肾脏疾病(,拼接)
	private String heartDisease;		// 心脏疾病(,拼接)
	private String vascular;		// 血管疾病(,拼接)
	private String eyeDisease;		// 眼部疾病(,拼接)
	private String nervousDisease;		// 神经系统疾病(,拼接)
	private String currentOther;		// 其他系统疾病(,拼接)
	private String inHospital;		// 住院史(,拼接)
	private String familyWard;		// family_ward
	private String hospitalCourse;		// 住院治疗情况(,拼接)
	private String vaccination;		// 非免疫规划预防接种史 (,拼接)
	private String healthEvaluation;		// 健康(,拼接)
	private String healthGuidance;		// 健康指导(,拼接)
	private String hazards;		// 危险因素控制(,拼接)
	
	public IaHealthCheck() {
		super();
	}

	public IaHealthCheck(String id){
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
	
	public String getCheckDate() {
		return checkDate;
	}

	public void setCheckDate(String checkDate) {
		this.checkDate = checkDate;
	}
	
	@Length(min=0, max=100, message="责任医生长度必须介于 0 和 100 之间")
	public String getDoctor() {
		return doctor;
	}

	public void setDoctor(String doctor) {
		this.doctor = doctor;
	}
	
	@Length(min=0, max=100, message="症状（数据字典，多个以，分隔）长度必须介于 0 和 100 之间")
	public String getSymptom() {
		return symptom;
	}

	public void setSymptom(String symptom) {
		this.symptom = symptom;
	}
	
	public String getAnimalHeat() {
		return animalHeat;
	}

	public void setAnimalHeat(String animalHeat) {
		this.animalHeat = animalHeat;
	}
	
	public String getPulseRate() {
		return pulseRate;
	}

	public void setPulseRate(String pulseRate) {
		this.pulseRate = pulseRate;
	}
	
	public String getRespiratoryRate() {
		return respiratoryRate;
	}

	public void setRespiratoryRate(String respiratoryRate) {
		this.respiratoryRate = respiratoryRate;
	}
	
	@Length(min=0, max=100, message="左侧血压，低/高区分长度必须介于 0 和 100 之间")
	public String getBloodLeft() {
		return bloodLeft;
	}

	public void setBloodLeft(String bloodLeft) {
		this.bloodLeft = bloodLeft;
	}
	
	@Length(min=0, max=100, message="左侧血压，低/高区分长度必须介于 0 和 100 之间")
	public String getBloodRight() {
		return bloodRight;
	}

	public void setBloodRight(String bloodRight) {
		this.bloodRight = bloodRight;
	}
	
	public String getHeight() {
		return height;
	}

	public void setHeight(String height) {
		this.height = height;
	}
	
	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}
	
	public String getWaist() {
		return waist;
	}

	public void setWaist(String waist) {
		this.waist = waist;
	}
	
	public String getBmi() {
		return bmi;
	}

	public void setBmi(String bmi) {
		this.bmi = bmi;
	}
	
	@Length(min=0, max=10, message="老年人健康状态自我评估（数据字典）长度必须介于 0 和 10 之间")
	public String getHealthAssessment() {
		return healthAssessment;
	}

	public void setHealthAssessment(String healthAssessment) {
		this.healthAssessment = healthAssessment;
	}
	
	@Length(min=0, max=10, message="老年人生活自理能力自我评估（数据字典）长度必须介于 0 和 10 之间")
	public String getAbilityAssessment() {
		return abilityAssessment;
	}

	public void setAbilityAssessment(String abilityAssessment) {
		this.abilityAssessment = abilityAssessment;
	}
	
	@Length(min=0, max=10, message="老年人认识能力长度必须介于 0 和 10 之间")
	public String getKnowAbility() {
		return knowAbility;
	}

	public void setKnowAbility(String knowAbility) {
		this.knowAbility = knowAbility;
	}
	
	@Length(min=0, max=10, message="老年人情感状态长度必须介于 0 和 10 之间")
	public String getEmotion() {
		return emotion;
	}

	public void setEmotion(String emotion) {
		this.emotion = emotion;
	}
	
	@Length(min=0, max=255, message="体育锻炼（json串）长度必须介于 0 和 255 之间")
	public String getPhysicalTraining() {
		return physicalTraining;
	}

	public void setPhysicalTraining(String physicalTraining) {
		this.physicalTraining = physicalTraining;
	}
	
	@Length(min=0, max=100, message="饮食习惯（数据字典逗号分隔）长度必须介于 0 和 100 之间")
	public String getEatingHabits() {
		return eatingHabits;
	}

	public void setEatingHabits(String eatingHabits) {
		this.eatingHabits = eatingHabits;
	}
	
	@Length(min=0, max=255, message="吸烟情况（json串）长度必须介于 0 和 255 之间")
	public String getSmokingCondition() {
		return smokingCondition;
	}

	public void setSmokingCondition(String smokingCondition) {
		this.smokingCondition = smokingCondition;
	}
	
	@Length(min=0, max=255, message="饮酒情况（json串）长度必须介于 0 和 255 之间")
	public String getDrinkingCondition() {
		return drinkingCondition;
	}

	public void setDrinkingCondition(String drinkingCondition) {
		this.drinkingCondition = drinkingCondition;
	}
	
	@Length(min=0, max=255, message="职业病危害因素接触史（json串）长度必须介于 0 和 255 之间")
	public String getOccupationalHazard() {
		return occupationalHazard;
	}

	public void setOccupationalHazard(String occupationalHazard) {
		this.occupationalHazard = occupationalHazard;
	}
	
	@Length(min=0, max=100, message="口腔（json串）长度必须介于 0 和 100 之间")
	public String getMouth() {
		return mouth;
	}

	public void setMouth(String mouth) {
		this.mouth = mouth;
	}
	
	@Length(min=0, max=100, message="视力长度必须介于 0 和 100 之间")
	public String getEyesight() {
		return eyesight;
	}

	public void setEyesight(String eyesight) {
		this.eyesight = eyesight;
	}
	
	@Length(min=0, max=100, message="听力（数据字典）长度必须介于 0 和 100 之间")
	public String getListening() {
		return listening;
	}

	public void setListening(String listening) {
		this.listening = listening;
	}
	
	@Length(min=0, max=100, message="运动功能（数据字典）长度必须介于 0 和 100 之间")
	public String getMotorFunction() {
		return motorFunction;
	}

	public void setMotorFunction(String motorFunction) {
		this.motorFunction = motorFunction;
	}
	
	@Length(min=0, max=100, message="眼底（json串）长度必须介于 0 和 100 之间")
	public String getFundus() {
		return fundus;
	}

	public void setFundus(String fundus) {
		this.fundus = fundus;
	}
	
	@Length(min=0, max=100, message="皮肤（json串）长度必须介于 0 和 100 之间")
	public String getSkin() {
		return skin;
	}

	public void setSkin(String skin) {
		this.skin = skin;
	}
	
	@Length(min=0, max=100, message="巩膜（json串）长度必须介于 0 和 100 之间")
	public String getSclera() {
		return sclera;
	}

	public void setSclera(String sclera) {
		this.sclera = sclera;
	}
	
	@Length(min=0, max=100, message="淋巴结（json串）长度必须介于 0 和 100 之间")
	public String getLymphNode() {
		return lymphNode;
	}

	public void setLymphNode(String lymphNode) {
		this.lymphNode = lymphNode;
	}
	
	@Length(min=0, max=255, message="肺（json串）长度必须介于 0 和 255 之间")
	public String getLung() {
		return lung;
	}

	public void setLung(String lung) {
		this.lung = lung;
	}
	
	@Length(min=0, max=255, message="心脏（json串）长度必须介于 0 和 255 之间")
	public String getHeart() {
		return heart;
	}

	public void setHeart(String heart) {
		this.heart = heart;
	}
	
	@Length(min=0, max=255, message="腹部（json串）长度必须介于 0 和 255 之间")
	public String getAbdomen() {
		return abdomen;
	}

	public void setAbdomen(String abdomen) {
		this.abdomen = abdomen;
	}
	
	@Length(min=0, max=100, message="下肢水肿（数据字典）长度必须介于 0 和 100 之间")
	public String getLegsEdema() {
		return legsEdema;
	}

	public void setLegsEdema(String legsEdema) {
		this.legsEdema = legsEdema;
	}
	
	@Length(min=0, max=100, message="足背动脉搏动（数据字典）长度必须介于 0 和 100 之间")
	public String getDorsalisPedis() {
		return dorsalisPedis;
	}

	public void setDorsalisPedis(String dorsalisPedis) {
		this.dorsalisPedis = dorsalisPedis;
	}
	
	@Length(min=0, max=100, message="肛门指诊（json串）长度必须介于 0 和 100 之间")
	public String getDre() {
		return dre;
	}

	public void setDre(String dre) {
		this.dre = dre;
	}
	
	@Length(min=0, max=100, message="乳腺（json串）长度必须介于 0 和 100 之间")
	public String getBreast() {
		return breast;
	}

	public void setBreast(String breast) {
		this.breast = breast;
	}
	
	@Length(min=0, max=255, message="妇科（json串）长度必须介于 0 和 255 之间")
	public String getGynecology() {
		return gynecology;
	}

	public void setGynecology(String gynecology) {
		this.gynecology = gynecology;
	}
	
	@Length(min=0, max=255, message="查体其它长度必须介于 0 和 255 之间")
	public String getPhysicalOther() {
		return physicalOther;
	}

	public void setPhysicalOther(String physicalOther) {
		this.physicalOther = physicalOther;
	}
	
	@Length(min=0, max=255, message="血常规（json串）长度必须介于 0 和 255 之间")
	public String getBloodRoutine() {
		return bloodRoutine;
	}

	public void setBloodRoutine(String bloodRoutine) {
		this.bloodRoutine = bloodRoutine;
	}
	
	@Length(min=0, max=255, message="尿常规（json串）长度必须介于 0 和 255 之间")
	public String getUrineRoutine() {
		return urineRoutine;
	}

	public void setUrineRoutine(String urineRoutine) {
		this.urineRoutine = urineRoutine;
	}
	
	@Length(min=0, max=255, message="空腹血糖（json串）长度必须介于 0 和 255 之间")
	public String getGlu() {
		return glu;
	}

	public void setGlu(String glu) {
		this.glu = glu;
	}
	
	@Length(min=0, max=100, message="心电图（json串）长度必须介于 0 和 100 之间")
	public String getEcg() {
		return ecg;
	}

	public void setEcg(String ecg) {
		this.ecg = ecg;
	}
	
	@Length(min=0, max=100, message="尿微量白蛋白长度必须介于 0 和 100 之间")
	public String getMau() {
		return mau;
	}

	public void setMau(String mau) {
		this.mau = mau;
	}
	
	@Length(min=0, max=100, message="大便潜血长度必须介于 0 和 100 之间")
	public String getOccultBlood() {
		return occultBlood;
	}

	public void setOccultBlood(String occultBlood) {
		this.occultBlood = occultBlood;
	}
	
	@Length(min=0, max=100, message="糖化血红蛋白长度必须介于 0 和 100 之间")
	public String getGlycatedHemoglobin() {
		return glycatedHemoglobin;
	}

	public void setGlycatedHemoglobin(String glycatedHemoglobin) {
		this.glycatedHemoglobin = glycatedHemoglobin;
	}
	
	@Length(min=0, max=100, message="乙型肝炎表面抗原（数据字典）长度必须介于 0 和 100 之间")
	public String getHbsag() {
		return hbsag;
	}

	public void setHbsag(String hbsag) {
		this.hbsag = hbsag;
	}
	
	@Length(min=0, max=100, message="肝功能（json串）长度必须介于 0 和 100 之间")
	public String getLiverFunction() {
		return liverFunction;
	}

	public void setLiverFunction(String liverFunction) {
		this.liverFunction = liverFunction;
	}
	
	@Length(min=0, max=100, message="肾功能（json串）长度必须介于 0 和 100 之间")
	public String getRenalFunction() {
		return renalFunction;
	}

	public void setRenalFunction(String renalFunction) {
		this.renalFunction = renalFunction;
	}
	
	@Length(min=0, max=100, message="血脂（json串）长度必须介于 0 和 100 之间")
	public String getBloodFat() {
		return bloodFat;
	}

	public void setBloodFat(String bloodFat) {
		this.bloodFat = bloodFat;
	}
	
	@Length(min=0, max=100, message="胸部X线片（json串）长度必须介于 0 和 100 之间")
	public String getChestXray() {
		return chestXray;
	}

	public void setChestXray(String chestXray) {
		this.chestXray = chestXray;
	}
	
	public String getBultrasound() {
		return bultrasound;
	}

	public void setBultrasound(String bultrasound) {
		this.bultrasound = bultrasound;
	}
	
	@Length(min=0, max=100, message="宫颈涂片（json串）长度必须介于 0 和 100 之间")
	public String getPapSmear() {
		return papSmear;
	}

	public void setPapSmear(String papSmear) {
		this.papSmear = papSmear;
	}
	
	@Length(min=0, max=100, message="辅助检查其它长度必须介于 0 和 100 之间")
	public String getAssistantOther() {
		return assistantOther;
	}

	public void setAssistantOther(String assistantOther) {
		this.assistantOther = assistantOther;
	}
	
	@Length(min=0, max=100, message="中医体质辨识（json串）长度必须介于 0 和 100 之间")
	public String getBibu() {
		return bibu;
	}

	public void setBibu(String bibu) {
		this.bibu = bibu;
	}
	
	@Length(min=0, max=100, message="脑血管疾病(json)长度必须介于 0 和 100 之间")
	public String getCerebrovascular() {
		return cerebrovascular;
	}

	public void setCerebrovascular(String cerebrovascular) {
		this.cerebrovascular = cerebrovascular;
	}
	
	@Length(min=0, max=100, message="肾脏疾病(josn)长度必须介于 0 和 100 之间")
	public String getKidney() {
		return kidney;
	}

	public void setKidney(String kidney) {
		this.kidney = kidney;
	}
	
	@Length(min=0, max=100, message="心脏疾病(json)长度必须介于 0 和 100 之间")
	public String getHeartDisease() {
		return heartDisease;
	}

	public void setHeartDisease(String heartDisease) {
		this.heartDisease = heartDisease;
	}
	
	@Length(min=0, max=100, message="血管疾病(json)长度必须介于 0 和 100 之间")
	public String getVascular() {
		return vascular;
	}

	public void setVascular(String vascular) {
		this.vascular = vascular;
	}
	
	@Length(min=0, max=100, message="眼部疾病(json)长度必须介于 0 和 100 之间")
	public String getEyeDisease() {
		return eyeDisease;
	}

	public void setEyeDisease(String eyeDisease) {
		this.eyeDisease = eyeDisease;
	}
	
	@Length(min=0, max=100, message="神经系统疾病(json)长度必须介于 0 和 100 之间")
	public String getNervousDisease() {
		return nervousDisease;
	}

	public void setNervousDisease(String nervousDisease) {
		this.nervousDisease = nervousDisease;
	}
	
	@Length(min=0, max=100, message="其他系统疾病(json)长度必须介于 0 和 100 之间")
	public String getCurrentOther() {
		return currentOther;
	}

	public void setCurrentOther(String currentOther) {
		this.currentOther = currentOther;
	}
	
	@Length(min=0, max=500, message="住院史(json)长度必须介于 0 和 500 之间")
	public String getInHospital() {
		return inHospital;
	}

	public void setInHospital(String inHospital) {
		this.inHospital = inHospital;
	}
	
	@Length(min=0, max=500, message="family_ward长度必须介于 0 和 500 之间")
	public String getFamilyWard() {
		return familyWard;
	}

	public void setFamilyWard(String familyWard) {
		this.familyWard = familyWard;
	}
	
	@Length(min=0, max=500, message="住院治疗情况(json)长度必须介于 0 和 500 之间")
	public String getHospitalCourse() {
		return hospitalCourse;
	}

	public void setHospitalCourse(String hospitalCourse) {
		this.hospitalCourse = hospitalCourse;
	}
	
	@Length(min=0, max=500, message="非免疫规划预防接种史 (json)长度必须介于 0 和 500 之间")
	public String getVaccination() {
		return vaccination;
	}

	public void setVaccination(String vaccination) {
		this.vaccination = vaccination;
	}
	
	@Length(min=0, max=255, message="健康(json)长度必须介于 0 和 255 之间")
	public String getHealthEvaluation() {
		return healthEvaluation;
	}

	public void setHealthEvaluation(String healthEvaluation) {
		this.healthEvaluation = healthEvaluation;
	}
	
	@Length(min=0, max=255, message="健康指导(json)长度必须介于 0 和 255 之间")
	public String getHealthGuidance() {
		return healthGuidance;
	}

	public void setHealthGuidance(String healthGuidance) {
		this.healthGuidance = healthGuidance;
	}
	
	@Length(min=0, max=255, message="危险因素控制(json)长度必须介于 0 和 255 之间")
	public String getHazards() {
		return hazards;
	}

	public void setHazards(String hazards) {
		this.hazards = hazards;
	}
	
}