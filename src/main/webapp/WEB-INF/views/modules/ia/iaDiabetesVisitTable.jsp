<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${ctxStatic }/iacss/print.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" />
<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<style type="text/css">
body{line-height:1.2; font-size:12px;}
.border0,.borderBot1{font-size:14px;}
table{table-layout:fixed;}
	.txt{font-size:10px;width:10px; height:10px; padding:0;}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		
		formatField('${iaDiabetesVisit.followDate }',"followDate");
		formatField('${iaDiabetesVisit.followWay }',"followWay");
		formatField('${iaDiabetesVisit.symptom }',"symptom");
		formatTextareaField('${iaDiabetesVisit.symptomOther }',"symptomOther");
		formatField('${iaDiabetesVisit.bloodPressure }',"bloodPressure");
		formatField('${iaDiabetesVisit.weight }',"weight");
		formatField('${iaDiabetesVisit.bodyMassIndex }',"bodyMassIndex");
		formatField('${iaDiabetesVisit.dorsalisPedisPulse }',"dorsalisPedisPulse");
		formatField('${iaDiabetesVisit.other }',"other");
		formatField('${iaDiabetesVisit.daySmoking }',"daySmoking");
		formatField('${iaDiabetesVisit.dayDrinking }',"dayDrinking");
		formatField('${iaDiabetesVisit.sports }',"sports");
		formatField('${iaDiabetesVisit.stapleFood }',"stapleFood");
		formatField('${iaDiabetesVisit.psychologicalAdjustment }',"psychologicalAdjustment");
		formatField('${iaDiabetesVisit.complianceBehavior }',"complianceBehavior");
		formatField('${iaDiabetesVisit.fastingBloodGlucose }',"fastingBloodGlucose");
		formatField('${iaDiabetesVisit.otherInspection }',"otherInspection");
		formatField('${iaDiabetesVisit.medicationCompliance }',"medicationCompliance");
		formatField('${iaDiabetesVisit.adverseDrugReaction }',"adverseDrugReaction");
		formatField('${iaDiabetesVisit.hypoglycemiaReaction }',"hypoglycemiaReaction");
		formatField('${iaDiabetesVisit.followVisitClassification }',"followVisitClassification");
		formatField('${iaDiabetesVisit.medicationSituation }',"medicationSituation");
		formatField('${iaDiabetesVisit.referral }',"referral");
		formatField('${iaDiabetesVisit.nextFollowDate }',"nextFollowDate");
		formatField('${iaDiabetesVisit.followDoctorSign }',"followDoctorSign");
	})
	
	function formatField(data,name){
		var dataV = data.split(",");
		for(var i=0;i<dataV.length;i++){
			$("input[name='"+name+"']:eq("+i+")").val(dataV[i]);
		}
	}
	
	function formatTextareaField(data,name){
		var dataV = data.split(",");
		for(var i=0;i<dataV.length;i++){
			$("textarea[name='"+name+"']:eq("+i+")").html(dataV[i]);
		}
	}
</script>
<title>2型糖尿病患者随访服务记录表</title>
</head>
<body>
<form:form id="inputForm" modelAttribute="iaDiabetesVisit" action="${ctx}/ia/iaDiabetesVisit/saveDiabetesVisit" method="post" class="form-horizontal">
	<form:hidden path="id"/>
	<sys:message content="${message}"/>
	<div id="page1">
  <table width="700" border="0" cellspacing="0"> 
   <tbody>
    <tr>
		<td width="110" height="15" style="border:0px solid #fff;"></td>
		<td width="300" style="border:0px solid #fff; height:0;"></td>
		<td style="border:0px solid #fff; height:0;"></td>
	</tr>
    <tr> 
     <td height="80" colspan="3"> 
      <div align="center"> 
       <p><font class="font18"><strong>2型糖尿病患者随访服务记录表</strong></font> </p> 
       <input type="hidden" name="icId" id="icId" value="${iaDiabetesVisit.icId }">
      </div>
	  </td> 
    </tr> 
    <tr> 
     <td height="" width="90" align="right"> 
       <strong class="nameSty">姓名：</strong>
	</td>
	<td width="300">
	    <input type="text" class="border0 textleft" id="name" name="name" value="${iaDiabetesVisit.name }" readonly="readonly"/>
	  </td>
	  <td align="center">
	  <strong>编号</strong>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 9, 10)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 10, 11)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 11, 12)}" readonly="readonly"/>
	  -
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 12, 13)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 13, 14)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 14, 15)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 15, 16)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaDiabetesVisit.no, 16, 17)}" readonly="readonly"/>
	  </td>
    </tr> 
   </tbody>
  </table> 
  <table width="700" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr>
		<td width="15" class="firttr"></td>
		<td width="78" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td width="60" class="firttr"></td>
	</tr>
    <tr height="30"> 
     <td colspan="2" style="border-top:0;" align="center"> 随访日期 </td> 
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" id="followDate" name="followDate"/>
	 </td>
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" id="followDate" name="followDate"/>
	 </td>
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" id="followDate" name="followDate"/>
	 </td>
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" id="followDate" name="followDate"/>
	 </td>
    </tr>
    <tr height="30"> 
     <td class="bordertop0" colspan="2" align="center"> 随访方式 </td> 
     <td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followWay" name="followWay"/>1门诊 2家庭 3电话
	 </td> 
     <td colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followWay" name="followWay"/>1门诊 2家庭 3电话
	 </td> 
     <td colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followWay" name="followWay"/>1门诊 2家庭 3电话
	 </td> 
     <td colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followWay" name="followWay"/>1门诊 2家庭 3电话
	 </td>
    </tr>


    <tr> 
		<td rowspan="2" align="center">
		 症<br />状
        </td>
		<td rowspan="2">
1无症状<br />
2多饮<br />
3多食<br />
4多尿<br />
5视力模糊<br />
6感染 <br />
7手脚麻木<br />
8下肢浮肿<br />
9 体重明显下降
        </td>
		<td align="center" colspan="2" height="">
		<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>
		</td>
		<td align="center" colspan="2">
		<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>
		</td>
		<td align="center" colspan="2">
		<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>
		</td>
		<td align="center" colspan="2">
		<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>/<input type="text" class="txt" size="1" maxlength="1" id="symptom" name="symptom"/>
		</td>
    </tr>
    <tr> 
		<td valign="top" colspan="2">
		其他：<textarea class="txtarea" rows="8" id="symptomOther" name="symptomOther"></textarea>
		</td>
		<td valign="top" colspan="2">
		其他：<textarea class="txtarea" rows="8" id="symptomOther" name="symptomOther"></textarea>
		</td>
		<td valign="top" colspan="2">
		其他：<textarea class="txtarea" rows="8" id="symptomOther" name="symptomOther"></textarea>
		</td>
		<td valign="top" colspan="2">
		其他：<textarea class="txtarea" rows="8" id="symptomOther" name="symptomOther"></textarea>
		</td>
    </tr>	
	
    <tr> 
		<td rowspan="5" align="center">
		 体<br />征
        </td>
		<td align="center">
血压（<span style="font-size:10px;">mmHg</span>）
        </td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="bloodPressure" name="bloodPressure"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="bloodPressure" name="bloodPressure"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="bloodPressure" name="bloodPressure"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="bloodPressure" name="bloodPressure"/>
		</td>
    </tr>
    <tr> 
		<td align="center">
体重（<span style="font-size:10px;">kg</span>）
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
    </tr>
    <tr> 
		<td align="center">
体质指数
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
    </tr>
    <tr> 
		<td align="center">
足背动脉搏动
        </td>
		<td align="center" height="" colspan="2">
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="dorsalisPedisPulse" name="dorsalisPedisPulse"/>
		 1 未触及2 触及
		</td>
		<td align="center" height="" colspan="2">
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="dorsalisPedisPulse" name="dorsalisPedisPulse"/>
		 1 未触及2 触及
		</td>
		<td align="center" height="" colspan="2">
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="dorsalisPedisPulse" name="dorsalisPedisPulse"/>
		 1 未触及2 触及
		</td>
		<td align="center" height="" colspan="2">
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="dorsalisPedisPulse" name="dorsalisPedisPulse"/>
		 1 未触及2 触及
		</td>
    </tr>
    <tr> 
		<td align="center">
其　　他
        </td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="other" name="other"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="other" name="other"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="other" name="other"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="other" name="other"/>
		</td>
    </tr>
	
	
    <tr> 
		<td rowspan="6" align="center">
		 生<br />
活<br />
方<br />
式<br />
指<br />
导

        </td>
		<td align="center">
日吸烟量
        </td>
		<td colspan="2">
		<input type="text" class="border0" style="width:40px" id="daySmoking" name="daySmoking"/>/<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>支
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:40px" id="daySmoking" name="daySmoking"/>/<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>支
		</td>
		<td  colspan="2">
		<input type="text" class="border0" style="width:40px" id="daySmoking" name="daySmoking"/>/<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>支
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:40px" id="daySmoking" name="daySmoking"/>/<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>支
		</td>
    </tr>
    <tr> 
		<td align="center">
日饮酒量
        </td>
		<td colspan="2">
		<input type="text" class="border0" style="width:40px" id="dayDrinking" name="dayDrinking"/>/<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>两
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:40px" id="dayDrinking" name="dayDrinking"/>/<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>两
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:40px" id="dayDrinking" name="dayDrinking"/>/<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>两
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:40px" id="dayDrinking" name="dayDrinking"/>/<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>两
		</td>
    </tr>
    <tr> 
		<td align="center">
运　　动
        </td>
		<td align="center" colspan="2" style="padding-bottom:2px;">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
		<td align="center" colspan="2">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
		<td align="center" colspan="2">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
		<td align="center" colspan="2">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
    </tr>
    <tr> 
		<td align="center">
主食（克/天）
        </td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>/<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>/<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>/<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>/<input type="text" class="border0" style="width:60px" id="stapleFood" name="stapleFood"/>
		</td>
    </tr>
    <tr> 
		<td align="center">
心理调整
        </td>
		<td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="psychologicalAdjustment" name="psychologicalAdjustment"/>1良好  2一般  3差
	     </td> 
		<td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="psychologicalAdjustment" name="psychologicalAdjustment"/>1良好  2一般  3差
	     </td> 
		<td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="psychologicalAdjustment" name="psychologicalAdjustment"/>1良好  2一般  3差
	     </td> 
		<td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="psychologicalAdjustment" name="psychologicalAdjustment"/>1良好  2一般  3差
	     </td> 
    </tr>
    <tr> 
		<td align="center">
遵医行为
        </td>
		<td align="center" colspan="2"> 
		<input type="text" class="txt fright margint2" size="1" maxlength="1" id="complianceBehavior" name="complianceBehavior"/> 1良好  2一般  3差
	     </td> 
		<td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="complianceBehavior" name="complianceBehavior"/>1良好  2一般  3差
	     </td> 
		<td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="complianceBehavior" name="complianceBehavior"/>1良好  2一般  3差
	     </td> 
		<td align="center" colspan="2"> 
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="complianceBehavior" name="complianceBehavior"/>1良好  2一般  3差
	     </td> 
    </tr>
	
    <tr> 
     <td rowspan="2" align="center"> 
	 辅<br />助<br />检<br />查<br />*
	 </td> 
     <td align="center"> 
		 空腹血糖值
	 </td>
     <td colspan="2" style="padding-bottom:2px;"> 
		<input type="text" class="borderBot1" size="8" id="fastingBloodGlucose" name="fastingBloodGlucose"/>mmol/L
	 </td>
     <td colspan="2"> 
		<input type="text" class="borderBot1" size="8" id="fastingBloodGlucose" name="fastingBloodGlucose"/>mmol/L
	 </td>
     <td colspan="2"> 
		<input type="text" class="borderBot1" size="8" id="fastingBloodGlucose" name="fastingBloodGlucose"/>mmol/L
	 </td>
     <td colspan="2"> 
		<input type="text" class="borderBot1" size="8" id="fastingBloodGlucose" name="fastingBloodGlucose"/>mmol/L
	 </td>
    </tr>
    <tr>  
     <td align="center"> 
		 其他检查*
	 </td>
     <td colspan="2" style="padding:3px;"> 
		糖化血红蛋白<input type="text" class="borderBot1" style="width:36px;" id="otherInspection" name="otherInspection"/>％
		检查日期：<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>月<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>日
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
	 </td>
     <td colspan="2"> 
		糖化血红蛋白<input type="text" class="borderBot1" style="width:36px;" id="otherInspection" name="otherInspection"/>％
		检查日期：<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>月<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>日
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
	 </td>
     <td colspan="2"> 
		糖化血红蛋白<input type="text" class="borderBot1" style="width:36px;" id="otherInspection" name="otherInspection"/>％
		检查日期：<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>月<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>日
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
	 </td>
     <td colspan="2"> 
		糖化血红蛋白<input type="text" class="borderBot1" style="width:36px;" id="otherInspection" name="otherInspection"/>％
		检查日期：<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>月<input type="text" class="borderBot1" style="width:18px;" id="otherInspection" name="otherInspection"/>日
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
		&nbsp;<input type="text" class="borderBot1" size="15" id="otherInspection" name="otherInspection"/>
	 </td>
    </tr>
    <tr> 
     <td colspan="2" align="center"> 服药依从性 </td> 
	<td align="" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
	<td align="" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
	<td align="" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
	<td align="" colspan="2"> 
	 <input type="text" class="txt fright" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
    </tr>
    <tr> 
     <td colspan="2" align="center" height=""> 药物不良反应 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
	 1无 2有
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
	 1无 2有
	 </td> 
	<td align="left" colspan="2">
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/> 
	 1无 2有
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
	 1无 2有
	 </td> 
    </tr>
    <tr> 
     <td colspan="2" align="center" height=""> 低血糖反应 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="hypoglycemiaReaction" name="hypoglycemiaReaction"/>
	 1无 2 偶尔 3频繁
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="hypoglycemiaReaction" name="hypoglycemiaReaction"/>
	 1无 2 偶尔 3频繁
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="hypoglycemiaReaction" name="hypoglycemiaReaction"/>
	 1无 2 偶尔 3频繁
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="hypoglycemiaReaction" name="hypoglycemiaReaction"/>
	 1无 2 偶尔 3频繁
	 </td> 
    </tr>
    <tr> 
     <td colspan="2" align="center" height=""> 此次随访分类 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>
	 1控制满意2控制不满意3不良反应4并发症
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>
	 1控制满意2控制不满意3不良反应4并发症
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>
	 1控制满意2控制不满意3不良反应4并发症
	 </td> 
	<td align="left" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>
	 1控制满意2控制不满意3不良反应4并发症
	 </td> 
    </tr>
	
	<tr> 
		<td rowspan="7" align="center">
		 用<br />
药<br />
情<br />
况
        </td>
		<td align="center" height="">
药物名称1
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
    </tr>
    <tr> 
		<td align="center" height="">
用法用量
        </td>  
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
    </tr>
	<tr> 
		<td align="center" height="">
药物名称2
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
    </tr>
    <tr> 
		<td align="center" height="">
用法用量
        </td>  
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
    </tr>
	<tr> 
		<td align="center" height="">
药物名称3
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="medicationSituation" name="medicationSituation"/>
		</td>
    </tr>
    <tr> 
		<td align="center">
用法用量
        </td>  
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
		<td>
		每日<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>次
		</td>
		<td>
		每次<input type="text" class="border0" style="width:10px" id="medicationSituation" name="medicationSituation"/>mg
		</td>
    </tr>
	<tr> 
		<td align="center">
胰岛素
        </td>
		<td valign="top" colspan="2">
		种类：<input type="text" class="border0" style="width:100px;" id="medicationSituation" name="medicationSituation"/><br />
		用法和用量：<input type="text" class="border0" style="width:60px;" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		种类：<input type="text" class="border0" style="width:100px;" id="medicationSituation" name="medicationSituation"/><br />
		用法和用量：<input type="text" class="border0" style="width:60px;" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		种类：<input type="text" class="border0" style="width:100px;" id="medicationSituation" name="medicationSituation"/><br />
		用法和用量：<input type="text" class="border0" style="width:60px;" id="medicationSituation" name="medicationSituation"/>
		</td>
		<td valign="top" colspan="2">
		种类：<input type="text" class="border0" style="width:100px;" id="medicationSituation" name="medicationSituation"/><br />
		用法和用量：<input type="text" class="border0" style="width:60px;" id="medicationSituation" name="medicationSituation"/>
		</td>
    </tr>
	<tr> 
		<td rowspan="2" align="center">
		 转<br />
诊
        </td>
		<td align="center">
原 因
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
    </tr>
	<tr> 
		<td align="center">
机构及科别
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" id="referral" name="referral"/>
		</td>
    </tr>
    <tr> 
     <td colspan="2" align="center"> 下次随访日期 </td> 
     <td colspan="2"> 
		 <input type="text" class="border0" id="nextFollowDate" name="nextFollowDate"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="nextFollowDate" name="nextFollowDate"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="nextFollowDate" name="nextFollowDate"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="nextFollowDate" name="nextFollowDate"/>
	 </td>
    </tr>
    <tr> 
     <td colspan="2" align="center"> 随访医生签名 </td> 
     <td colspan="2"> 
		 <input type="text" class="border0" id="followDoctorSign" name="followDoctorSign"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="followDoctorSign" name="followDoctorSign"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="followDoctorSign" name="followDoctorSign"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="followDoctorSign" name="followDoctorSign"/>
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