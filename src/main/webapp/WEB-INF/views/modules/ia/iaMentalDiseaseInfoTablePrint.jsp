<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${ctxStatic }/iacss/print.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" />
<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<!-- 插入打印控件 -->
<OBJECT ID="jatoolsPrinter" CLASSID="CLSID:B43D3361-D075-4BE2-87FE-057188254255" codebase="jatoolsPrinter.cab#version=8,6,0,0"></OBJECT>
<script type="text/javascript">
	$(document).ready(function() {
		
		formatField('${iaMentalDiseaseInfo.agree }',"agree");
		formatField('${iaMentalDiseaseInfo.firstHappenTime }',"firstHappenTime");
		formatField('${iaMentalDiseaseInfo.mainSymptom }',"mainSymptom");
		formatField('${iaMentalDiseaseInfo.outpatientDepartment }',"outpatientDepartment");
		formatField('${iaMentalDiseaseInfo.currentDiagnosis }',"currentDiagnosis");
		formatField('${iaMentalDiseaseInfo.impactFamilySociety }',"impactFamilySociety");
		formatField('${iaMentalDiseaseInfo.fillDate }',"fillDate");
		
	})
	
	function formatField(data,name){
		var dataV = data.split(",");
		for(var i=0;i<dataV.length;i++){
			$("input[name='"+name+"']:eq("+i+")").val(dataV[i]);
		}
	}
	
	function doPrint(how) {
		var myDoc = {
			settings:{paperName:'a4'},   // 选择a4纸张进行打印
			settings:{orientation:1},   // 选择横向打印,1为纵向，2为横向
			settings:{
					topMargin:50,
                	leftMargin:232,
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
<title>重性精神疾病患者个人信息补充表</title>
</head>
<body>
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
       <p><font class="font18"><strong>重性精神疾病患者个人信息补充表</strong></font> </p> 
       <input type="hidden" name="icId" id="icId" value="${iaMentalDiseaseInfo.icId }">
      </div>
	  </td> 
    </tr> 
    <tr> 
     <td height="30" width="100" align="right"> 
       <strong class="nameSty">姓名：</strong>
	</td>
	<td width="300">
	    <input type="text" class="border0 textleft" id="name" name="name" value="${iaMentalDiseaseInfo.name }" readonly="readonly"/>
	  </td>
	  <td align="center">
	  <strong>编号</strong>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 9, 10)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 10, 11)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 11, 12)}" readonly="readonly"/>
	  -
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 12, 13)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 13, 14)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 14, 15)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 15, 16)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaMentalDiseaseInfo.no, 16, 17)}" readonly="readonly"/>
	  </td>
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr>
		<td width="100" class="firttr"></td>
		<td class="firttr"></td>
		<td width="100" class="firttr"></td>
		<td class="firttr"></td>
	</tr>
    <tr> 
     <td width="100" style="border-top:0;" height="80" align="center"> 监护人姓名 </td> 
     <td align="center" style="border-top:0;"> 
		<input type="text" class="border0" id="guardian" name="guardian" value="${iaMentalDiseaseInfo.guardian }"/>
	 </td> 
     <td align="center" style="border-top:0;"> 与患者关系 </td> 
     <td style="border-top:0;"> 
	 <input type="text" class="border0" id="relationship" name="relationship" value="${iaMentalDiseaseInfo.relationship }"/>
	 </td> 
    </tr> 
    <tr> 
     <td height="80" align="center"> 监护人住址 </td> 
     <td align="center"> 
		<input type="text" class="border0" id="address" name="address" value="${iaMentalDiseaseInfo.address }"/>
	 </td> 
     <td align="center"> 监护人电话 </td> 
     <td> 
	 <input type="text" class="border0" id="tel" name="tel" value="${iaMentalDiseaseInfo.tel }"/>
	 </td> 
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td height="80" width="200" align="center"> 辖区村（居）委会联系人、电话 </td> 
     <td align="center"> 
		<input type="text" class="border0" id="committeerTel" name="committeerTel" value="${iaMentalDiseaseInfo.committeerTel }"/>
	 </td> 
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="100"  align="center" colspan="2" height="100"> 知情同意</td> 
     <td colspan="3">
	 1同意参加管理 &nbsp;&nbsp;&nbsp;&nbsp; 0不同意参加管理<br /><input type="text" class="txt fright" size="1" maxlength="1" id="agree" name="agree"/>
签字：<input type="text" class="borderBot1" size="20" id="agree" name="agree" /> <br />                  
签字时间 <input type="text" class="borderBot1" size="18" id="agree" name="agree" /> 年<input type="text" class="borderBot1" size="4" id="agree" name="agree" />  月<input type="text" class="borderBot1" size="4" id="agree" name="agree" /> 日

	 </td> 
    </tr>
    <tr> 
     <td align="center" colspan="2" height="30"> 初次发病时间</td> 
     <td colspan="3">
	 <input type="text" class="borderBot1" size="18" id="firstHappenTime" name="firstHappenTime"/> 年<input type="text" class="borderBot1" size="4" id="firstHappenTime" name="firstHappenTime"/>  月<input type="text" class="borderBot1" size="4" id="firstHappenTime" name="firstHappenTime"/> 日
	 </td> 
    </tr>
    <tr> 
     <td align="center" colspan="2" height="80"> 既往主要症状</td> 
     <td colspan="3">
	 1幻觉&nbsp;&nbsp;&nbsp;&nbsp; 2交流困难&nbsp;&nbsp;&nbsp;&nbsp; 3猜疑 &nbsp;&nbsp;&nbsp;&nbsp;4喜怒无常  &nbsp;&nbsp;&nbsp;&nbsp;5行为怪异&nbsp;&nbsp;&nbsp;&nbsp;6兴奋话多&nbsp;&nbsp;&nbsp;&nbsp;7伤人毁物
	 &nbsp;&nbsp;&nbsp;&nbsp;8悲观厌世&nbsp;&nbsp;&nbsp;&nbsp;  9无故外走 &nbsp;&nbsp;&nbsp;&nbsp;10自语自笑 &nbsp;&nbsp;&nbsp;&nbsp; 11孤僻懒散 &nbsp;&nbsp;&nbsp;&nbsp;
	 12其他<input type="text" class="borderBot1" size="2" id="mainSymptom" name="mainSymptom"/><br />
	 <span class=" fright">
	 <input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/>/<input type="text" class="txt" style="width:16px" id="mainSymptom" name="mainSymptom"/></span>
	 </td> 
    </tr>
	
    <tr> 
     <td align="center" width="50" rowspan="2"> 既往治疗情况</td> 
     <td align="center" width="40" height="60"> 门诊</td> 
     <td colspan="3"><input type="text" class="txt fright" size="1" maxlength="1" id="outpatientDepartment" name="outpatientDepartment"/>
	 1未治 &nbsp;&nbsp;&nbsp;&nbsp; 2间断门诊治疗 &nbsp;&nbsp;&nbsp;&nbsp;3连续门诊治疗 <br />
首次抗精神病药治疗时间<input type="text" class="borderBot1" size="10" id="outpatientDepartment" name="outpatientDepartment"/> 年
<input type="text" class="borderBot1" size="4" id="outpatientDepartment" name="outpatientDepartment"/>  月
<input type="text" class="borderBot1" size="4" id="outpatientDepartment" name="outpatientDepartment"/> 日
	 </td> 
    </tr>
	<tr> 
     <td align="center" height="50"> 住院</td> 
     <td colspan="3">
	 曾住精神专科医院/综合医院精神专科<input type="text" class="borderBot1" size="4" id="hospitalization" name="hospitalization" value="${iaMentalDiseaseInfo.hospitalization }"/>次
	 </td> 
    </tr>
	
	<tr> 
     <td align="center" colspan="2" height="40"> 目前诊断情况</td> 
     <td colspan="3">
	 诊断<input type="text" class="borderBot1" size="10" id="currentDiagnosis" name="currentDiagnosis"/>
	 确诊医院<input type="text" class="borderBot1" size="10" id="currentDiagnosis" name="currentDiagnosis"/>
	 确诊日期<input type="text" class="borderBot1" size="10" id="currentDiagnosis" name="currentDiagnosis"/>
	 </td> 
    </tr>
	<tr> 
     <td align="center" colspan="2"> 最近一次<br />
	治疗效果
	</td> 
     <td colspan="3">
	 <input type="text" class="txt fright" size="1" maxlength="1" id="recentTreatmentEffect" name="recentTreatmentEffect" value="${iaMentalDiseaseInfo.recentTreatmentEffect }"/>
	 1痊愈 &nbsp;&nbsp;&nbsp;&nbsp; 2好转  &nbsp;&nbsp;&nbsp;&nbsp; 3无变化 &nbsp;&nbsp;&nbsp;&nbsp; 4 加重
	 
	 </td> 
    </tr>
	<tr> 
     <td align="center" colspan="2" height="60"> 患病对家庭<br />
社会的影响

	</td> 
     <td colspan="3">
	 1轻度滋事<input type="text" class="borderBot1" size="2" id="impactFamilySociety" name="impactFamilySociety" />次&nbsp;&nbsp;&nbsp;&nbsp;
	 2肇事<input type="text" class="borderBot1" size="2" id="impactFamilySociety" name="impactFamilySociety"/>次&nbsp;&nbsp;&nbsp;&nbsp;3肇祸<input type="text" class="borderBot1" size="2" id="impactFamilySociety" name="impactFamilySociety"/>次 &nbsp;&nbsp;&nbsp;&nbsp; <br/> 
4自伤<input type="text" class="borderBot1" size="2" id="impactFamilySociety" name="impactFamilySociety"/>次&nbsp;&nbsp;&nbsp;&nbsp;5自杀未遂<input type="text" class="borderBot1" size="2" id="impactFamilySociety" name="impactFamilySociety"/>次&nbsp;&nbsp;&nbsp;&nbsp;6无

	 </td> 
    </tr>
	<tr> 
     <td align="center" colspan="2" height="30"> 关锁情况
	</td> 
     <td colspan="3">
	 <input type="text" class="txt fright" size="1" maxlength="1" id="lockCondition" name="lockCondition" value="${iaMentalDiseaseInfo.lockCondition }" />1无关锁&nbsp;&nbsp;&nbsp;&nbsp; 2关锁&nbsp;&nbsp;&nbsp;&nbsp;3关锁已解除
	 </td> 
    </tr>
	<tr> 
     <td align="center" colspan="2" height="30"> 经济状况
	</td> 
     <td colspan="3">
	 <input type="text" class="txt fright" size="1" maxlength="1" id="economicSituation" name="economicSituation" value="${iaMentalDiseaseInfo.economicSituation }"/>1贫困，在当地贫困线标准以下 &nbsp;&nbsp;&nbsp;&nbsp; 2非贫困 &nbsp;&nbsp;&nbsp;&nbsp; 3不详
	 </td> 
    </tr>
	<tr> 
     <td align="center" colspan="2" height="30"> 专科医生的意见<br />(如果有请记录)
	</td> 
     <td colspan="3">
	 <!-- <textarea class="txtarea" rows="2" id="specialistOpinion" name="specialistOpinion"></textarea> -->
	 <input type="text" class="border0" id="specialistOpinion" name="specialistOpinion" value="${iaMentalDiseaseInfo.specialistOpinion }"/>
	 </td> 
    </tr>
	<tr> 
     <td height="60" align="center" colspan="2"> 填表日期
	</td> 
     <td>
	 <input type="text" class="border0" style="width:40px" id="fillDate" name="fillDate"/> 年
	 <input type="text" class="border0" style="width:20px" id="fillDate" name="fillDate"/>月
	 <input type="text" class="border0" style="width:20px" id="fillDate" name="fillDate"/> 日
	 </td>
	<td align="center">医 生 签 字</td>
    <td><input type="text" class="border0" id="doctorSignature" name="doctorSignature" value="${iaMentalDiseaseInfo.doctorSignature }"/></td>	
    </tr>
	
   </tbody>
  </table> 
  </div>
	<input id="btnSubmit" class="btn btn-primary" type="button" value="打    印" onclick="doPrint('打印预览')" />
	<input id="btnSubmit" class="btn" type="button" value="返    回" onclick="history.go(-1)"/>
</body>
</html>