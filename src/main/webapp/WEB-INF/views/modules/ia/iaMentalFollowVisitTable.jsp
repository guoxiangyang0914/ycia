<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${ctxStatic }/iacss/print.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" />
<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		formatField('${iaMentalFollowVisit.anyTime }',"anyTime");
		formatField('${iaMentalFollowVisit.currentSymptoms }',"currentSymptoms");
		formatField('${iaMentalFollowVisit.impactFamilySociety }',"impactFamilySociety");
		formatField('${iaMentalFollowVisit.hospitalization }',"hospitalization");
		formatField('${iaMentalFollowVisit.laboratoryExamination }',"laboratoryExamination");
		formatField('${iaMentalFollowVisit.adverseDrugReaction }',"adverseDrugReaction");
		formatField('${iaMentalFollowVisit.whetherReferral }',"whetherReferral");
		formatField('${iaMentalFollowVisit.medicationSituation }',"medicationSituation");
		formatField('${iaMentalFollowVisit.rehabilitationMeasures }',"rehabilitationMeasures");
		formatField('${iaMentalFollowVisit.nextFollowDate }',"nextFollowDate");
	})
	
	function formatField(data,name){
		var dataV = data.split(",");
		for(var i=0;i<dataV.length;i++){
			$("input[name='"+name+"']:eq("+i+")").val(dataV[i]);
		}
	}
</script>
<title>重性精神疾病患者随访服务记录表</title>
</head>
<body>
<form:form id="inputForm" modelAttribute="iaMentalFollowVisit" action="${ctx}/ia/iaMentalFollowVisit/saveMentalFollowVisit" method="post" class="form-horizontal">
	<form:hidden path="id"/>
	<sys:message content="${message}"/>
<div id="page1">
  <table width="649" border="0" cellspacing="0"> 
   <tbody>
    <tr>
		<td width="90" height="15" style="border:0px solid #fff;"></td>
		<td width="300" style="border:0px solid #fff; height:0;"></td>
		<td style="border:0px solid #fff; height:0;"></td>
	</tr>
    <tr> 
     <td height="80" colspan="3"> 
      <div align="center"> 
       <p><font class="font18"><strong>重性精神疾病患者随访服务记录表</strong></font> </p> 
       <input type="hidden" name="icId" id="icId" value="${iaMentalFollowVisit.icId }">
      </div>
	  </td> 
    </tr> 
    <tr> 
     <td height="30" width="100" align="right"> 
       <strong class="nameSty">姓名：</strong>
	</td>
	<td width="300">
	    <input type="text" class="border0" id="name" name="name" value="${iaMentalFollowVisit.name }" readonly="readonly"/>
	  </td>
	  <td align="center">
	  <strong>编号</strong>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 9, 10)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 10, 11)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 11, 12)}" readonly="readonly"/>
	  -
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 12, 13)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 13, 14)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 14, 15)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 15, 16)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalFollowVisit.no, 16, 17)}" readonly="readonly"/>
	  </td>
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="100" height="30" align="center"> 随访日期 </td> 
     <td colspan="2"> 
		<input type="text" class="borderBot1" size="10" id="anyTime" name="anyTime" /> 年
		<input type="text" class="borderBot1" size="4" id="anyTime" name="anyTime" />  月
		<input type="text" class="borderBot1" size="4" id="anyTime" name="anyTime" /> 日
	 </td>  
    </tr> 
    <tr> 
     <td width="100" height="30" align="center"> 危险性 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="danger" name="danger" value="${iaMentalFollowVisit.danger }"/>0 （0级） 1（1级） 2（2级）  3（3级）  4（4级）  5（5级）
	 </td>  
    </tr> 
    <tr> 
     <td width="100" height="80" align="center"> 目前症状 </td> 
     <td colspan="2"> 
		1幻觉 &nbsp;&nbsp;2交流困难 &nbsp;&nbsp;3猜疑 &nbsp;&nbsp;4喜怒无常  &nbsp;&nbsp;5行为怪异 &nbsp;&nbsp; 6兴奋话多 &nbsp;&nbsp;7伤人毁物 
8悲观厌世 &nbsp;&nbsp; 9无故外走&nbsp;&nbsp; 10自语自笑 &nbsp;&nbsp; 11孤僻懒散 &nbsp;&nbsp;
12其他<input type="text" class="borderBot1" size="2" id="currentSymptoms" name="currentSymptoms"/><br />
		<span class=" fright">
		<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/>/<input type="text" class="txt" style="width:16px" id="currentSymptoms" name="currentSymptoms"/></span>
	 </td>  
    </tr> 
    <tr> 
     <td width="100" height="30" align="center"> 自知力 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="insight" name="insight" value="${iaMentalFollowVisit.insight }"/>
		1自知力完全  &nbsp;&nbsp;&nbsp;&nbsp;  2自知力不全  &nbsp;&nbsp;&nbsp;&nbsp;  3自知力缺失
	 </td>  
    </tr> 
    <tr> 
     <td width="100" height="30" align="center"> 睡眠情况 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="sleepCondition" name="sleepCondition" value="${iaMentalFollowVisit.sleepCondition }"/>
		1良好  &nbsp;&nbsp;&nbsp;&nbsp;  2一般  &nbsp;&nbsp;&nbsp;&nbsp;  3较差
	 </td>  
    </tr> 
    <tr> 
     <td width="100" height="30" align="center"> 饮食情况 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="dietSituation" name="dietSituation" value="${iaMentalFollowVisit.dietSituation }"/>
		1良好  &nbsp;&nbsp;&nbsp;&nbsp;  2一般   &nbsp;&nbsp;&nbsp;&nbsp; 3较差
	 </td>  
    </tr> 
    <tr> 
     <td  rowspan="5" align="center"> 社会<br />
		功能<br />
		情况
     </td> 
     <td height="30"> 
		个人生活料理
	 </td> 
     <td> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="personalLifestyle" name="personalLifestyle" value="${iaMentalFollowVisit.personalLifestyle }"/>
		1良好&nbsp;&nbsp;&nbsp;&nbsp;2一般&nbsp;&nbsp;&nbsp;&nbsp;3较差
	 </td>  
    </tr>
    <tr> 
     <td height="30"> 
		家务劳动
	 </td> 
     <td> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="housework" name="housework" value="${iaMentalFollowVisit.housework }"/>
		1良好&nbsp;&nbsp;&nbsp;&nbsp;2一般&nbsp;&nbsp;&nbsp;&nbsp;3较差
	 </td>  
    </tr>
    <tr> 
     <td height="30"> 
		生产劳动及工作
	 </td> 
     <td> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="productiveWork" name="productiveWork" value="${iaMentalFollowVisit.productiveWork }"/>
		1良好&nbsp;&nbsp;&nbsp;&nbsp;2一般&nbsp;&nbsp;&nbsp;&nbsp;3较差  &nbsp;&nbsp;&nbsp;&nbsp;9此项不适用
	 </td>  
    </tr>
    <tr> 
     <td height="30"> 
		学习能力
	 </td> 
     <td> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="learningAbility" name="learningAbility" value="${iaMentalFollowVisit.learningAbility }"/>
		1良好&nbsp;&nbsp;&nbsp;&nbsp;2一般&nbsp;&nbsp;&nbsp;&nbsp;3较差
	 </td>  
    </tr>
    <tr> 
     <td height="30"> 
		社会人际交往
	 </td> 
     <td> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="interpersonalCommunication" name="interpersonalCommunication" value="${iaMentalFollowVisit.interpersonalCommunication }"/>
		1良好&nbsp;&nbsp;&nbsp;&nbsp;2一般&nbsp;&nbsp;&nbsp;&nbsp;3较差
	 </td>  
    </tr>
    <tr> 
     <td align="center" height="60"> 患病对家庭<br />
社会的影响
 </td> 
     <td colspan="2"> 
		1轻度滋事<input type="text" class="borderBot1" size="3" id="impactFamilySociety" name="impactFamilySociety"/>次  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   
		2肇事<input type="text" class="borderBot1" size="3" id="impactFamilySociety" name="impactFamilySociety"/>次    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;     
		3肇祸<input type="text" class="borderBot1" size="3" id="impactFamilySociety" name="impactFamilySociety"/>次 &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
<br />4自伤<input type="text" class="borderBot1" size="3" id="impactFamilySociety" name="impactFamilySociety"/>次&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
5自杀未遂<input type="text" class="borderBot1" size="3" id="impactFamilySociety" name="impactFamilySociety"/>次&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;6无

	 </td>  
    </tr>
    <tr> 
     <td width="100" height="30" align="center"> 关锁情况 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="lockCondition" name="lockCondition" value="${iaMentalFollowVisit.lockCondition }"/>
		1无关锁 &nbsp;&nbsp;&nbsp;&nbsp;  2关锁 &nbsp;&nbsp;&nbsp;&nbsp; 3关锁已解除
	 </td>  
    </tr> 
    <tr> 
     <td align="center" height="60"> 住院情况 </td> 
     <td colspan="2"> 
		0从未住院 &nbsp;&nbsp;&nbsp;&nbsp; 1目前正在住院 &nbsp;&nbsp;&nbsp;&nbsp; 2既往住院，现未住院 <br />
		<input type="text" class="txt fright" size="1" maxlength="1" id="hospitalization" name="hospitalization"/>
		末次出院时间<input type="text" class="borderBot1" size="10" id="hospitalization" name="hospitalization"/> 年
		<input type="text" class="borderBot1" size="4" id="hospitalization" name="hospitalization"/>  月
		<input type="text" class="borderBot1" size="4" id="hospitalization" name="hospitalization"/> 日
	 </td>  
    </tr> 
    <tr> 
     <td align="center" height="30"> 实验室检查 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="laboratoryExamination" name="laboratoryExamination"/>
		1无 &nbsp;&nbsp;&nbsp;&nbsp;   2有
		<input type="text" class="borderBot1" size="10" id="laboratoryExamination" name="laboratoryExamination"/> 
	 </td>  
    </tr> 
    <tr> 
     <td align="center" height="30"> 服药依从性 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance" value="${iaMentalFollowVisit.medicationCompliance }"/>
		1规律&nbsp;&nbsp;&nbsp;&nbsp;  2间断 &nbsp;&nbsp;&nbsp;&nbsp; 3不服药
	 </td>  
    </tr> 
    <tr> 
     <td align="center" height="30"> 药物不良反应 </td> 
     <td colspan="2"> 
		<input type="text" class="txt fright" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
		1无  &nbsp;&nbsp;&nbsp;&nbsp;  2有<input type="text" class="borderBot1" size="10" id="adverseDrugReaction" name="adverseDrugReaction"/> 
	 </td>  
    </tr> 
    <tr> 
     <td align="center" height="30"> 治疗效果 </td> 
     <td colspan="2"> 
		 <input type="text" class="txt fright" size="1" maxlength="1" id="treatmentEffect" name="treatmentEffect" value="${iaMentalFollowVisit.treatmentEffect }"/>
		1痊愈  &nbsp;&nbsp;&nbsp;&nbsp;2 好转 &nbsp;&nbsp;&nbsp;&nbsp;  3 无变化 &nbsp;&nbsp;&nbsp;&nbsp;  4 加重
	 </td>  
    </tr> 
    <tr> 
     <td align="center" height="60"> 是否转诊 </td> 
     <td colspan="2"> 
		1否  &nbsp;&nbsp;&nbsp;&nbsp; 2是<br /> <input type="text" class="txt fright" size="1" maxlength="1" id="whetherReferral" name="whetherReferral"/>
		转诊原因：<input type="text" class="borderBot1" size="22" id="whetherReferral" name="whetherReferral"/><br />
		转诊至机构及科室：<input type="text" class="borderBot1" size="13" id="whetherReferral" name="whetherReferral"/>
	 </td>  
    </tr> 
   </tbody>
  </table>

  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="100" rowspan="3" align="center"> 用药情况 </td> 
     <td height=""> 
		药物1：<input type="text" class="border0" style="width:100px;" id="medicationSituation" name="medicationSituation"/>
	 </td>
     <td> 
		用法：每日(月)<input type="text" class="border0" style="width:24px;" id="medicationSituation" name="medicationSituation"/>次
	 </td>
     <td> 
		每次剂量<input type="text" class="border0" style="width:24px;" id="medicationSituation" name="medicationSituation"/>mg
	 </td>	 
    </tr> 
    <tr> 
     <td height=""> 
		药物2：<input type="text" class="border0" style="width:100px;" id="medicationSituation" name="medicationSituation"/>
	 </td>
     <td> 
		用法：每日(月)<input type="text" class="border0" style="width:24px;" id="medicationSituation" name="medicationSituation"/>次
	 </td>
     <td> 
		每次剂量<input type="text" class="border0" style="width:24px;" id="medicationSituation" name="medicationSituation"/>mg
	 </td>	 
    </tr>
    <tr> 
     <td height=""> 
		药物3：<input type="text" class="border0" style="width:100px;" id="medicationSituation" name="medicationSituation"/>
	 </td>
     <td> 
		用法：每日(月)<input type="text" class="border0" style="width:24px;" id="medicationSituation" name="medicationSituation"/>次
	 </td>
     <td> 
		每次剂量<input type="text" class="border0" style="width:24px;" id="medicationSituation" name="medicationSituation"/>mg
	 </td>	 
    </tr>
    <tr> 
     <td height="50" align="center"> 康复措施 </td> 
     <td colspan="3"> 
	 <span class=" fright"><input type="text" class="txt" size="1" maxlength="1" id="rehabilitationMeasures" name="rehabilitationMeasures"/>/<input type="text" class="txt" size="1" maxlength="1" id="rehabilitationMeasures" name="rehabilitationMeasures"/>/<input type="text" class="txt" size="1" maxlength="1" id="rehabilitationMeasures" name="rehabilitationMeasures"/>/<input type="text" class="txt" size="1" maxlength="1" id="rehabilitationMeasures" name="rehabilitationMeasures"/></span>
		1生活劳动能力&nbsp;&nbsp;2职业训练&nbsp;&nbsp;3学习能力&nbsp;&nbsp;4社会交往&nbsp;&nbsp;
		5其他<input type="text" class="borderBot1" size="3" id="rehabilitationMeasures" name="rehabilitationMeasures"/><br />
		
	 </td>  
    </tr> 
    <tr> 
     <td height="" align="center"> 本次随访分类 </td> 
     <td colspan="3"> 
	 <input type="text" class="txt fright" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification" value="${iaMentalFollowVisit.followVisitClassification }" style="margin-top:2px;"/>
		1不稳定&nbsp;&nbsp;&nbsp;&nbsp;2基本稳定 &nbsp;&nbsp;&nbsp;&nbsp; 3稳定 &nbsp;&nbsp;&nbsp;&nbsp;0未访到 
		
	 </td>  
    </tr> 
    <tr> 
     <td height="" align="center"> 下次随访日期 </td> 
     <td> 
		<input type="text" class="borderBot1" style="width:40px" id="nextFollowDate" name="nextFollowDate"/>年
		<input type="text" class="borderBot1" style="width:20px" id="nextFollowDate" name="nextFollowDate"/>月
		<input type="text" class="borderBot1" style="width:20px" id="nextFollowDate" name="nextFollowDate"/>日
	 </td>
	<td align="center">
	随访医生签名
	</td>
	<td>
	  <input type="text" class="border0" id="followDoctorSign" name="followDoctorSign" value="${iaMentalFollowVisit.followDoctorSign }"/>
	</td>
    </tr> 
   </tbody>
  </table> 
  
  </div>
	<input id="btnSubmit" class="btn btn-primary" type="submit" value="保存"/>
	<input id="btnSubmit" class="btn" type="button" value="返    回" onclick="history.go(-1)"/>
</form:form>
</body>
</html>