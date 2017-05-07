<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${ctxStatic }/iacss/print.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" />
<!-- 插入打印控件 -->
<OBJECT ID="jatoolsPrinter" CLASSID="CLSID:B43D3361-D075-4BE2-87FE-057188254255" codebase="jatoolsPrinter.cab#version=8,6,0,0"></OBJECT>
<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<style type="text/css">
body{line-height:1.2; font-size:12px;}
.border0,.borderBot1{font-size:14px;}
table{table-layout:fixed;}
	.txt{font-size:10px;width:10px; height:10px; padding:0;}
</style>
<script type="text/javascript">
	$(document).ready(function() {
		
		formatField('${iaHypertensionVisit.followDate }',"followDate");
		formatField('${iaHypertensionVisit.followWay }',"followWay");
		formatField('${iaHypertensionVisit.symptom }',"symptom");
		formatTextareaField('${iaHypertensionVisit.symptomOther }',"symptomOther");
		formatField('${iaHypertensionVisit.bloodPressure }',"bloodPressure");
		formatField('${iaHypertensionVisit.weight }',"weight");
		formatField('${iaHypertensionVisit.bodyMassIndex }',"bodyMassIndex");
		formatField('${iaHypertensionVisit.heartRate }',"heartRate");
		formatField('${iaHypertensionVisit.other }',"other");
		formatField('${iaHypertensionVisit.daySmoking }',"daySmoking");
		formatField('${iaHypertensionVisit.dayDrinking }',"dayDrinking");
		formatField('${iaHypertensionVisit.sports }',"sports");
		formatField('${iaHypertensionVisit.psychologicalAdjustment }',"psychologicalAdjustment");
		formatField('${iaHypertensionVisit.complianceBehavior }',"complianceBehavior");
		formatField('${iaHypertensionVisit.supplementaryExamination }',"supplementaryExamination");
		formatField('${iaHypertensionVisit.medicationCompliance }',"medicationCompliance");
		formatField('${iaHypertensionVisit.adverseDrugReaction }',"adverseDrugReaction");
		formatField('${iaHypertensionVisit.followVisitClassification }',"followVisitClassification");
		formatField('${iaHypertensionVisit.medicationSituation }',"medicationSituation");
		formatField('${iaHypertensionVisit.referral }',"referral");
		formatField('${iaHypertensionVisit.nextFollowDate }',"nextFollowDate");
		formatField('${iaHypertensionVisit.followDoctorSign }',"followDoctorSign");
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
	
	function doPrint(how) {
		var myDoc = {
			settings:{paperName:'a4'},   // 选择a4纸张进行打印
			settings:{orientation:1},   // 选择横向打印,1为纵向，2为横向
			settings:{
					topMargin:50,
                	leftMargin:136,
                	bottomMargin:50,
                	rightMargin:50
            },   // 设置上下左距页边距为10毫米，注意，单位是 1/10毫米
			documents : document,
			copyrights : '杰创软件拥有版权  www.jatools.com'
		};
		var jatoolsPrinter = document.getElementById("jatoolsPrinter");
		if (how == '打印预览') {
			jatoolsPrinter.printPreview(myDoc); // 打印预览
		}
	}
</script>
<title>高血压患者随访服务记录表</title>
</head>
<body>
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
       <p><font class="font18"><strong>高血压患者随访服务记录表</strong></font> </p> 
       <input type="hidden" name="icId" id="icId" value="${iaHypertensionVisit.icId }"> 
      </div>
	  </td> 
    </tr> 
    <tr> 
     <td height="" width="90" align="right"><strong class="nameSty">姓名：</strong></td>
	<td width="300">
	    <input type="text" class="border0 textleft" id="name" name="name" value="${iaHypertensionVisit.name }" readonly="readonly"/>
	  </td>
	  <td align="center">
	  <strong>编号</strong>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 9, 10)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 10, 11)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 11, 12)}" readonly="readonly"/>
	  -
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 12, 13)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 13, 14)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 14, 15)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 15, 16)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHypertensionVisit.no, 16, 17)}" readonly="readonly"/>
	  </td>
    </tr> 
   </tbody>
  </table> 
  <table width="700" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr>
		<td width="10" class="firttr"></td>
		<td width="78" class="firttr"></td>
		<td width="61" class="firttr"></td>
		<td width="61" class="firttr"></td>
		<td width="61" class="firttr"></td>
		<td width="61" class="firttr"></td>
		<td width="61" class="firttr"></td>
		<td width="61" class="firttr"></td>
		<td width="61" class="firttr"></td>
		<td width="61" class="firttr"></td>
	</tr>
    <tr height="25"> 
     <td width="200" style="border-top:0;" colspan="2" align="center"> 随访日期 </td> 
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" style="width:30px" id="followDate" name="followDate" />年
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />月
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />日
	 </td>
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" style="width:30px" id="followDate" name="followDate" />年
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />月
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />日
	 </td>
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" style="width:30px" id="followDate" name="followDate" />年
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />月
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />日
	 </td>
     <td colspan="2" style="border-top:0;"> 
		 <input type="text" class="border0" style="width:30px" id="followDate" name="followDate" />年
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />月
		 <input type="text" class="border0" style="width:20px" id="followDate" name="followDate" />日
	 </td>
    </tr>
    <tr> 
     <td width="90" class="bordertop0" height="25" colspan="2" align="center"> 随访方式 </td> 
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
2头痛头晕 <br />
3恶心呕吐<br />
4眼花耳鸣 <br />
5呼吸困难　<br />
6心悸胸闷 <br />
7鼻衄出血不止<br />
8四肢发麻  <br />
9下肢水肿
        </td>
		<td align="center" colspan="2" height="25">
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
		<td align="center" height="25">
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
		<td align="center" height="25">
体重（<span style="font-size:10px;">kg</span>）
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>/
		<input type="text" class="border0" style="width:60px" id="weight" name="weight"/>
		</td>
    </tr>
    <tr> 
		<td align="center" height="25">
体质指数
        </td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
		<td valign="top" colspan="2">
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>/
		<input type="text" class="border0" style="width:60px" id="bodyMassIndex" name="bodyMassIndex"/>
		</td>
    </tr>
    <tr> 
		<td align="center" height="25">
心　　率
        </td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="heartRate" name="heartRate"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="heartRate" name="heartRate"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="heartRate" name="heartRate"/>
		</td>
		<td align="center" height="" colspan="2">
		  <input type="text" class="border0" id="heartRate" name="heartRate"/>
		</td>
    </tr>
    <tr> 
		<td align="center" height="25">
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
日吸烟量（支）
        </td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>/
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>/
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>
		</td>
		<td  colspan="2">
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>/
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>/
		<input type="text" class="border0" style="width:60px" id="daySmoking" name="daySmoking"/>
		</td>
    </tr>
    <tr> 
		<td align="center">
日饮酒量（两）
        </td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>/
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>/
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>/
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>
		</td>
		<td colspan="2">
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>/
		<input type="text" class="border0" style="width:60px" id="dayDrinking" name="dayDrinking"/>
		</td>
    </tr>
    <tr> 
		<td align="center">
运    动
        </td>
		<td align="center" colspan="2" style="padding-bottom:2px;">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
		<td align="center" colspan="2" style="padding-bottom:2px;">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
		<td align="center" colspan="2" style="padding-bottom:2px;">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
		<td align="center" colspan="2" style="padding-bottom:2px;">
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
	<input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次<br />
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>次/周
    <input type="text" class="borderBot1" style="width:18px;" id="sports" name="sports"/>分钟/次
		</td>
    </tr>
    <tr> 
		<td align="center">
摄盐情况（咸淡）
        </td>
		<td align="center" height="30" colspan="2">
		  轻/中/重 &nbsp;&nbsp; ／轻/中/重
		   <input type="hidden" id="saltUptake" name="saltUptake"/>
		</td>
		<td align="center" height="30" colspan="2">
		  轻/中/重 &nbsp;&nbsp; ／轻/中/重
		</td>
		<td align="center" height="30" colspan="2">
		  轻/中/重 &nbsp;&nbsp; ／轻/中/重
		</td>
		<td align="center" height="30" colspan="2">
		  轻/中/重 &nbsp;&nbsp; ／轻/中/重
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
		 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="complianceBehavior" name="complianceBehavior"/>1良好  2一般  3差
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
     <td colspan="2" align="center" height="30"> 辅助检查* </td> 
     <td colspan="2"> 
		 <input type="text" class="border0" id="supplementaryExamination" name="supplementaryExamination"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="supplementaryExamination" name="supplementaryExamination"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="supplementaryExamination" name="supplementaryExamination"/>
	 </td>
     <td colspan="2"> 
		 <input type="text" class="border0" id="supplementaryExamination" name="supplementaryExamination"/>
	 </td>
    </tr>
    <tr> 
     <td colspan="2" align="center" height="30"> 服药依从性 </td> 
	<td align="center" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
	<td align="center" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
	<td align="center" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
	<td align="center" colspan="2"> 
	 <input type="text" class="txt fright" size="1" maxlength="1" id="medicationCompliance" name="medicationCompliance"/>1规律2间断3不服药
	 </td> 
    </tr>
    <tr> 
     <td colspan="2" align="center" height="30"> 药物不良反应 </td> 
	<td align="center" colspan="2"><input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
	 1无 2有<input type="text" class="borderBot1" size="2" />
	 
	 </td> 
	<td align="center" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
	 1无 2有<input type="text" class="borderBot1" size="2" />
	 </td> 
	<td align="center" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
	 1无 2有<input type="text" class="borderBot1" size="2" />
	 </td> 
	<td align="center" colspan="2"> 
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="adverseDrugReaction" name="adverseDrugReaction"/>
	 1无 2有<input type="text" class="borderBot1" size="2" />
	 </td> 
    </tr>
    <tr> 
     <td colspan="2" align="center" height="25"> 此次随访分类 </td> 
	<td align="" colspan="2"> 
	 1控制满意2控制不满意<br />
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>3不良反应4并发症
	 </td> 
	<td align="" colspan="2"> 
	 1控制满意2控制不满意<br />
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>3不良反应4并发症
	 </td> 
	<td align="" colspan="2"> 
	 1控制满意2控制不满意<br />
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>3不良反应4并发症
	 </td> 
	<td align="" colspan="2"> 
	 1控制满意2控制不满意<br />
	 <input type="text" class="txt fright margint2" size="1" maxlength="1" id="followVisitClassification" name="followVisitClassification"/>3不良反应4并发症
	 </td> 
    </tr>
	
	<tr> 
		<td rowspan="8" align="center">
		 用<br />
药<br />
情<br />
况
        </td>
		<td align="center" height="25">
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
		<td align="center" height="25">
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
		<td align="center" height="25">
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
		<td align="center" height="25">
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
		<td align="center" height="25">
其他药物
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
		<td align="center" height="25">
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
		<td rowspan="2" align="center">
		 转<br />
诊
        </td>
		<td align="center" height="25">
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
		<td align="center" height="25">
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
     <td colspan="2" align="center" height="25"> 下次随访日期 </td> 
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
     <td colspan="2" align="center" height="25"> 随访医生签名 </td> 
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
	<input id="btnSubmit" class="btn btn-primary" type="button" value="打    印" onclick="doPrint('打印预览')" />
	<input id="btnSubmit" class="btn" type="button" value="返    回" onclick="history.go(-1)"/>
</body>
</html>