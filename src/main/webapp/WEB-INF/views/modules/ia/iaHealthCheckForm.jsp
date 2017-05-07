<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>健康体检表管理</title>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${ctxStatic }/iacss/print.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet">
<meta http-equiv="Expires" content="0"><meta http-equiv="Cache-Control" content="no-cache"><meta http-equiv="Cache-Control" content="no-store">
<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<link href="${ctxStatic}/jquery-jbox/2.3/Skins/Bootstrap/jbox.min.css" rel="stylesheet" />
<script src="${ctxStatic}/jquery-jbox/2.3/jquery.jBox-2.3.min.js" type="text/javascript"></script>
<script src="${ctxStatic}/common/jeesite.js" type="text/javascript"></script>
<script type="text/javascript">var ctx = '${ctx}', ctxStatic='${ctxStatic}';</script>
<style type="text/css">
	table{table-layout:fixed;}
</style>
<!-- 插入打印控件 -->
<OBJECT ID="jatoolsPrinter" CLASSID="CLSID:B43D3361-D075-4BE2-87FE-057188254255" codebase="jatoolsPrinter.cab#version=8,6,0,0"></OBJECT>
<script type="text/javascript">
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
</head>
<body>
<form action="${ctx }/ia/iaHealthCheck/save" method="post">
<input type="hidden" name="id" value="${iaHealthCheck.id }"/>
<input type="hidden" name="icId" value="${iaHealthCheck.icId }"/>
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
       <p><font class="font18"><strong>健康体检表</strong></font> </p> 
      </div>
	  </td> 
    </tr> 
    <tr> 
     <td height="" width="90" align="right"> 
       <strong class="nameSty">姓名：</strong>
	</td>
	<td width="300">
	    <input type="text" class="border0 textleft" id="name" name="name" value="${iaHealthCheck.name }" readonly="readonly"/>
	  </td>
	  <td align="center">
	  <strong>编号</strong>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 9, 10)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 10, 11)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 11, 12)}" readonly="readonly"/>
	  -
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 12, 13)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 13, 14)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 14, 15)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 15, 16)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaHealthCheck.no, 16, 17)}" readonly="readonly"/>
	  </td>
    </tr>
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="100" height="30" align="left"> 体检日期 </td> 
     <td align="center"> 
		<input type="text" name="checkDate" class="borderBot1 borderBot0" size="4" />年<input type="text" name="checkDate" class="borderBot1 borderBot0" size="2" />月<input type="text" name="checkDate" class="borderBot1 borderBot0" size="1" />日
	 </td> 
     <td width="100" align="center"> 责任医生 </td> 
     <td> 
	 <input type="text" class="border0" name="doctor" value="${iaHealthCheck.doctor }" />
	 </td> 
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0" style="border-top:0;"> 
   <tbody>
    <tr style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"> 
     <td width="40" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td>
     <td width="100" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
     <td width="150" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
     <td width="100" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
     <td width="100" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
     <td width="" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
    </tr> 
    <tr height=""> 
     <td class="bordertop0" align="center" style="border-top:0;"> <strong>内&nbsp;容</strong> </td> 
     <td align="center" colspan="5" style="border-top:0;">  <strong>检&nbsp;查&nbsp;项&nbsp;目</strong>  </td> 
    </tr> 
    <tr> 
     <td width="" class="bordertop0" align="center">症<br />状</td> 
     <td align="left" colspan="5">
		<label>1无症状</label> 
		<label>2头痛 </label>
		<label>3头晕 </label>
		<label>4心悸  </label>
		<label>5胸闷 </label> 
		<label>6胸痛</label>
		<label>7慢性咳嗽</label>  
		<label>8咳痰 </label> 
		
		<label>9呼吸困难</label> 
		<label>10多饮 </label>
		<label>11多尿 </label>
		<label>12体重下降  </label>
		<label>13乏力 </label> 
		<label>14关节肿痛</label>
		<label>15视力模糊</label>  
		<label>16手脚麻木 </label>
		
		<label>17尿急</label> 
		<label>18尿痛 </label>
		<label>19便秘 </label>
		<label>20腹泻  </label>
		<label>21恶心呕吐 </label> 
		<label>22眼花</label>
		<label>23耳鸣</label>  
		<label>24乳房胀痛 </label> 
		<label style="margin-right:0;">25其他 </label>
		<input type="text" name="symptom" class="borderBot1" size="4" />
		<span class=" fright" style="margin-top:10px;">
		  <input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />/<input type="text" name="symptom" class="txt" style="width:16px" />
	  </span>
	 </td> 
    </tr> 
    <tr> 
     <td align="center" rowspan="9">一<br />般<br />状<br />况</td> 
    </tr> 
    <tr> 
     <td height="" align="center">体&nbsp;&nbsp;&nbsp;&nbsp;温</td> 
     <td align="center">
		<input type="text" name="animalHeat" class="border0" style="width:60%;" value="${iaHealthCheck.animalHeat }"/>
		℃
	 </td>
     <td class="bordertop0" align="center">脉&nbsp;&nbsp;&nbsp;&nbsp;率</td> 
     <td align="center" colspan="2" width="200">
		<input type="text" name="pulseRate" class="border0" style="width:60%;" value="${iaHealthCheck.pulseRate }"/>
		次/分钟
	 </td>  
    </tr> 
    <tr> 
     <td width="" class="bordertop0" align="center">呼吸频率</td> 
     <td align="center">
		<input type="text" name="respiratoryRate" class="border0" style="width:40%;" value="${iaHealthCheck.respiratoryRate }" />
		次/分钟
	 </td>
     <td width="" align="center">血&nbsp;&nbsp;&nbsp;&nbsp;压</td> 
	 <td style="padding:0;" colspan="2">
		<table width="230" border="0" cellpadding="0" cellspacing="0"> 
			<tr> 
			 <td align="center" width="40%" style="border-right:1px solid #000; border-bottom:1px solid #000"> 左&nbsp;&nbsp;侧 </td> 
			 <td style="border-bottom:1px solid #000" width="60%" > 
				 <input type="text" name="bloodLeft" class="border0" style="width:20px;" />
				 /
				 <input type="text" name="bloodLeft" class="border0" style="width:25px;" />
				 mmHg
			 </td> 
			</tr>
			<tr> 
			 <td align="center" style="border-right:1px solid #000;"> 右&nbsp;&nbsp;侧 </td> 
			 <td> 
				 <input type="text" name="bloodLeft" class="border0" style="width:20px;" />
				 /
				 <input type="text" name="bloodLeft" class="border0" style="width:25px;" />
				 mmHg
			 </td> 
			</tr>
		</table>
	 </td>
    </tr>
    <tr> 
     <td height="" align="center">身&nbsp;&nbsp;&nbsp;&nbsp;高</td> 
     <td align="center">
		<input type="text" id="height" name="height" class="border0" style="width:60%;" value="${iaHealthCheck.height }" />
		cm
	 </td>
     <td class="bordertop0" align="center">体&nbsp;&nbsp;&nbsp;&nbsp;重</td> 
     <td align="center" colspan="2">
		<input type="text" id="weight" name="weight" class="border0" style="width:81%;" value="${iaHealthCheck.weight }"  onblur="jsBMI();"/>
		kg
	 </td>  
    </tr> 
    <tr> 
     <td width="" height="" align="center">腰&nbsp;&nbsp;&nbsp;&nbsp;围</td> 
     <td align="center" width="100">
		<input type="text" name="waist" class="border0" style="width:60%;" value="${iaHealthCheck.waist }"  />
		cm
	 </td>
     <td width="" class="bordertop0" align="center">体质指数<br/>（BMI）</td> 
     <td align="center" colspan="2">
		<input type="text" id="bmi" name="bmi" class="border0" style="width:76%;" value="${iaHealthCheck.bmi }" />
		Kg/㎡
	 </td>  
    </tr>
    <tr> 
     <td width="" height="" align="center">老年人健康状态<br />自我评估*</td> 
     <td align="left" colspan="4"><input type="text" name="healthAssessment" class="txt fright" style="margin-top:2px;" size="1" maxlength="1" value="${iaHealthCheck.healthAssessment }" />
		<label>1&nbsp;满意</label>   <label>2&nbsp;基本满意</label>  <label>3&nbsp;说不清楚</label>   <label>4不太满意</label>   <label>5不满意</label> 		
	 </td>
    </tr>
    <tr> 
     <td width="" height="" align="center">老年人生活自<br />理能力自我评估*</td> 
     <td align="left" colspan="4">
<input type="text" name="abilityAssessment" class="txt fright" size="1" maxlength="1" style="margin-top:2px;" value="${iaHealthCheck.abilityAssessment }" />
		<label>1&nbsp;可自理（0～3分）</label>&nbsp;&nbsp;&nbsp;<label> 2&nbsp;轻度依赖（4～8分）</label> <br />
		<label>3&nbsp;中度依赖（9～18分)</label>   <label> 4&nbsp;不能自理（≥19分）</label> 		
	 </td>
    </tr>
    <tr> 
     <td width="" height="" align="center">老年人<br />认知功能*
</td> 
     <td align="left" colspan="4"><input type="text" name="knowAbility"  style="margin-top:2px;" class="txt fright" size="1" maxlength="1" />
		1&nbsp;粗筛阴性<br />2&nbsp;粗筛阳性， 简易智力状态检查，总分<input type="text" name="knowAbility" class="borderBot1" size="8" />		
	 </td>
    </tr>
    <tr> 
     <td width="" height="" align="center">老年人<br />情感状态*
</td> 
     <td align="left" colspan="4"><input type="text" name="emotion"  style="margin-top:2px;" class="txt fright" size="1" maxlength="1" />
		1&nbsp;粗筛阴性 <br />2&nbsp;粗筛阳性， 老年人抑郁评分检查，总分<input type="text" name="emotion" class="borderBot1" size="8" />		
	 </td>
    </tr>
   </tbody>
  </table>
   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="40" class="firttr"></td>
     <td width="100" class="firttr"></td> 
     <td width="100" class="firttr"></td> 
     <td width="130" class="firttr"></td> 
     <td width="130" class="firttr"></td> 
     <td width="" class="firttr"></td> 
    </tr>
    <tr> 
     <td width="" align="center" style="border-top:0;" rowspan="14">生<br />活<br />方<br />式</td> 
    </tr> 
    <tr> 
     <td width="190" rowspan="3" style="border-top:0;" align="center">体育锻炼</td>
	 <td height="" width="100" style="border-top:0;">锻炼频率</td> 
	 <td colspan="3" style="border-top:0;">
	 <input type="text" name="physicalTraining" class="txt fright" size="1" style="margin-top:2px;" maxlength="1" />
	 <label>1每天</label>  <label>2每周一次以上</label>  <label>3偶尔</label>  <label>4不锻炼</label>
	 </td>
    </tr>
    <tr> 
	 <td height="">每次锻炼时间</td> 
	 <td align="right">
		<input type="text" name="physicalTraining" class="border0" style="width:50px" />分钟
	 </td>
	 <td>坚持锻炼时间</td> 
	 <td align="right">
		<input type="text" name="physicalTraining" class="border0" style="width:60px" />年
	 </td>
    </tr>
    <tr> 
	 <td height="">锻炼方式</td> 
	 <td colspan="3">
	 <input type="text" name="physicalTraining" class="border0" />
	 </td>
    </tr>
	<tr>
		<td align="center" height="">饮食习惯</td>
		<td colspan="4"><span class=" fright"><input type="text" name="eatingHabits" class="txt" size="1" maxlength="1" />/<input type="text" name="eatingHabits" class="txt" size="1" maxlength="1" />/<input type="text" name="eatingHabits" class="txt" size="1" maxlength="1" /></span>
	 1&nbsp;荤素均衡&nbsp;&nbsp;2&nbsp;荤食为主&nbsp;&nbsp;3&nbsp;素食为主&nbsp;&nbsp;4&nbsp;嗜盐&nbsp;&nbsp;5&nbsp;嗜油&nbsp;&nbsp;6&nbsp;嗜糖
	 
	 </td>
	</tr>
    <tr> 
     <td width="100" rowspan="3" align="center">吸烟情况</td>
	 <td>吸烟状况</td> 
	 <td colspan="3">
	 <input type="text" name="smokingCondition" class="txt fright" style="margin-top:3px;" size="1" maxlength="1" /><label>1从不吸烟</label>  <label>2已戒烟</label>  <label>3吸烟</label>  <label>4不锻炼</label>
	 </td>
    </tr>
    <tr> 
	 <td>日吸烟量</td> 
	 <td colspan="3">
	 平均<input type="text" name="smokingCondition" class="border0" style="width:40px" />支
	 </td>
    </tr>
    <tr> 
	 <td>开始吸烟年龄</td> 
	 <td align="right">
		<input type="text" name="smokingCondition" class="border0" style="width:50px" />岁
	 </td>
	 <td align="center">戒烟年龄</td> 
	 <td align="right">
		<input type="text" name="smokingCondition" class="border0" style="width:60px" />岁
	 </td>
    </tr>
	
    <tr> 
     <td width="100" rowspan="5" align="center">饮酒情况</td>
	 <td>饮酒频率</td> 
	 <td colspan="3">
	 <input type="text" name="drinkingCondition" class="txt fright" style="margin-top:3px;" size="1" maxlength="1" /><label>1&nbsp;从不</label>  <label>2&nbsp;偶尔</label>  <label>3&nbsp;经常</label>  <label>4&nbsp;每天</label>
	 </td>
    </tr>
    <tr> 
	 <td>日饮酒量</td> 
	 <td colspan="3">
	 平均<input type="text" name="drinkingCondition" class="border0" style="width:40px" />两
	 </td>
    </tr>
    <tr> 
	 <td>是否戒酒</td> 
	 <td colspan="3">
	 <input type="text" name="drinkingCondition" style="margin-top:2px;" class="txt fright"  size="1" maxlength="1" />
	 <label>1&nbsp;从不</label> 
	 <label>
	 2已戒酒，戒酒年龄：<input type="text" name="drinkingCondition" class="borderBot1" size="3" />岁</label>
	 </td>
    </tr>
    <tr> 
	 <td>开始饮酒年龄</td> 
	 <td align="right">
		<input type="text" name="drinkingCondition" class="border0" style="width:50px" />岁
	 </td>
	 <td>近一年内是否曾醉酒</td> 
	 <td>
		<input type="text" name="drinkingCondition" class="txt fright" style="margin-top:3px;" size="1" maxlength="1" />
		1&nbsp;是  2&nbsp;否
	 </td>
    </tr>
    <tr> 
	 <td>饮酒种类</td> 
	 <td colspan="3"> 
	 <span class=" fright"><input type="text" name="drinkingCondition" class="txt" size="1" maxlength="1" />/<input type="text" name="drinkingCondition" class="txt" size="1" maxlength="1" />/<input type="text" name="drinkingCondition" class="txt" size="1" maxlength="1" />/<input type="text" name="drinkingCondition" class="txt" size="1" maxlength="1" /></span>
	 1&nbsp;白酒&nbsp;2啤酒&nbsp;3&nbsp;红酒&nbsp;4黄酒&nbsp;5其他<input type="text" name="drinkingCondition" class="borderBot1" size="3" />
	 </td>
    </tr>
	<tr>
		<td height="25" align="center">职业病危害因素接触史</td>
		<td colspan="4" style="padding:2px 0;">
			<table border="0" width="493" cellpadding="0" cellspacing="0" style="">
				<tr>
					<td><input type="text" name="occupationalHazard" class="txt fright" size="1" maxlength="1" />
						1&nbsp;无&nbsp;&nbsp;&nbsp;2&nbsp;有（工种<input type="text" name="occupationalHazard" class="borderBot1" size="5" />从业时间<input type="text" name="occupationalHazard" class="borderBot1" size="5" />年）
						 
					</td>
				</tr>
				<tr>
					<td><input type="text" name="occupationalHazard" class="txt fright" size="1" maxlength="1" />
						毒物种类&nbsp;&nbsp;&nbsp;&nbsp;粉尘<input type="text" name="occupationalHazard" class="borderBot1" style="width:107px;" />防护措施&nbsp;1&nbsp;无&nbsp;&nbsp; 2&nbsp;有<input type="text" name="occupationalHazard" class="borderBot1" size="2" />    
						
					</td>
				</tr>
				<tr>
					<td><input type="text" name="occupationalHazard" class="txt fright" size="1" maxlength="1" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						放射物质<input type="text" name="occupationalHazard" class="borderBot1" size="10" />防护措施&nbsp;1&nbsp;无&nbsp;&nbsp; 2&nbsp;有<input type="text" name="occupationalHazard" class="borderBot1" size="2" />    
						
					</td>
				</tr>
				<tr>
					<td><input type="text" name="occupationalHazard" class="txt fright" size="1" maxlength="1" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						物理因素<input type="text" name="occupationalHazard" class="borderBot1" size="10" />防护措施&nbsp;1&nbsp;无&nbsp;&nbsp; 2&nbsp;有<input type="text" name="occupationalHazard" class="borderBot1" size="2" />    
						
					</td>
				</tr>
				<tr>
					<td><input type="text" name="occupationalHazard" class="txt fright" size="1" maxlength="1" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						化学物质<input type="text" name="occupationalHazard" class="borderBot1" size="10" />防护措施&nbsp;1&nbsp;无&nbsp;&nbsp; 2&nbsp;有<input type="text" name="occupationalHazard" class="borderBot1" size="2" />    
						
					</td>
				</tr>
				<tr>
					<td><input type="text" name="occupationalHazard" class="txt fright" size="1" maxlength="1" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						其他<input type="text" name="occupationalHazard" class="borderBot1"  style="width:107px;" />防护措施&nbsp;1&nbsp;无&nbsp;&nbsp; 2&nbsp;有<input type="text" name="occupationalHazard" class="borderBot1" size="2" />    
						
					</td>
				</tr>
			</table>
	    </td>
	</tr>
   </tbody>
  </table> 
  </div>
  <div id="page2" style="padding-top:60px;">
   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
	   <tbody>
		<tr style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"> 
		 <td style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;" width="40"></td>
		 <td style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;" width="50"></td> 
		 <td style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;" width="44"></td> 
		 <td style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;" width=""></td> 
		</tr>
		<tr>
			<td rowspan="5" align="center" width="44" style="border-top:0;">
			 脏<br />器<br />功<br />能
			</td>
		</tr>
		<tr>
			<td colspan="2" width="150" align="center" style="border-top:0;">口&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;腔</td>
			<td style="padding:3px 0; border-top:0;">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td>
							 <input type="text" name="mouth" class="txt fright" size="1" maxlength="1" />
							口唇&nbsp;&nbsp;1&nbsp;红润 &nbsp;&nbsp;
							2&nbsp;苍白 &nbsp;&nbsp;3&nbsp;发绀 &nbsp;&nbsp;4&nbsp;皲裂&nbsp;&nbsp; 5&nbsp;疱疹
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="mouth" class="txt fright" size="1" maxlength="1" />
							<span class="fleft">齿列&nbsp;&nbsp;1&nbsp;正常&nbsp;&nbsp;2&nbsp;缺齿</span>
							<span class="fleft yctxt">
								<input type="text" class="borderBot1" />
								<input type="text" class="borderBot1 borderLeft1" />
								<input type="text" class="borderBot1 borderBot0" />
								<input type="text" class="borderBot1 borderBot0 borderLeft1" />
							</span>
							<span class="fleft">3&nbsp;龋齿</span>
							<span class="fleft yctxt">
								<input type="text" class="borderBot1" />
								<input type="text" class="borderBot1 borderLeft1" />
								<input type="text" class="borderBot1 borderBot0" />
								<input type="text" class="borderBot1 borderBot0 borderLeft1" />
							</span>
							<span class="fleft">4&nbsp;义齿(假牙) </span>
							<span class="fleft yctxt">
								<input type="text" class="borderBot1" />
								<input type="text" class="borderBot1 borderLeft1" />
								<input type="text" class="borderBot1 borderBot0" />
								<input type="text" class="borderBot1 borderBot0 borderLeft1" />
							</span>
						</td>
					</tr>
					<tr>
						<td>
							<input type="text" name="mouth" class="txt fright" size="1" maxlength="1" />
							咽部&nbsp;&nbsp;1&nbsp;无充血&nbsp;&nbsp;2&nbsp;充血&nbsp;&nbsp;3&nbsp;淋巴滤泡增生
						</td>
					</tr>
				</table>
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">视&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;力</td>
			<td>
				左眼<input type="text" name="eyesight" class="borderBot1" size="4" />
				右眼<input type="text" name="eyesight" class="borderBot1" size="4" />
				 （矫正视力：左眼<input type="text" name="eyesight" class="borderBot1" size="4" />右眼<input type="text" name="eyesight" class="borderBot1" size="4" />）
			</td>
		</tr>
		<tr>
			<td height="25" colspan="2" align="center">听&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;力</td>
			<td>
				<input type="text" name="listening" class="txt fright" size="1" maxlength="1" />
				1&nbsp;听见&nbsp;&nbsp;2&nbsp;听不清或无法听见
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">运动功能</td>
			<td>
				<input type="text" name="motorFunction" class="txt fright" size="1" maxlength="1" />
				1&nbsp;可顺利完成 &nbsp;&nbsp; 2&nbsp;无法独立完成其中任何一个动作
			</td>
		</tr>
		
		
		<tr>
			<td rowspan="20" align="center">
			 查<br />体
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">&nbsp;眼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;底*</td>
			<td>
			 <input type="text" name="fundus" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;正常 &nbsp;&nbsp; 2&nbsp;异常<input type="text" name="fundus" class="borderBot1" size="6" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">皮&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;肤</td>
			<td>
			 <input type="text" name="skin" class="txt fright" size="1" maxlength="1" />
			 1正常&nbsp;
			 2潮红&nbsp;
			 3苍白&nbsp;
			 4发绀&nbsp;
			 5黄染&nbsp;
			 6色素沉着 &nbsp;
			 7其他<input type="text" name="skin" class="borderBot1" size="3" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">巩&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;膜</td>
			<td>
			 <input type="text" name="sclera" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;正常 &nbsp;&nbsp; 2 &nbsp;黄染 &nbsp;&nbsp;3&nbsp;充血 &nbsp;&nbsp;4&nbsp;其他<input type="text" name="sclera" class="borderBot1" size="3" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">淋巴结</td>
			<td><input type="text" name="lymphNode" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;未触及 &nbsp;&nbsp;  2&nbsp;锁骨上  &nbsp;&nbsp; 3&nbsp;腋窝 &nbsp;&nbsp;  4其他<input type="text" name="lymphNode" class="borderBot1" size="3" />
			 
			</td>
		</tr>
		<tr>
			<td colspan="2"  height="25"rowspan="3" align="center">肺</td>
			<td height="25">
			 <input type="text" name="lung" class="txt fright" size="1" maxlength="1" />
			 桶状胸：1&nbsp;否　&nbsp;&nbsp;&nbsp;&nbsp;　2&nbsp;是
			</td>
		</tr>
		<tr>
			<td height="25">
			 <input type="text" name="lung" class="txt fright" size="1" maxlength="1" />
			 呼吸音：1&nbsp;正常&nbsp;&nbsp;&nbsp;&nbsp;  2&nbsp;异常<input type="text" name="lung" class="borderBot1" size="3" />
			</td>
		</tr>
		<tr>
			<td height="25">
			 <input type="text" name="lung" class="txt fright" size="1" maxlength="1" />
			 罗  音：1&nbsp;无 &nbsp;&nbsp;&nbsp;&nbsp;　 2&nbsp;干罗音 
			 &nbsp;&nbsp;&nbsp;&nbsp; 3&nbsp;湿罗音 &nbsp;&nbsp;&nbsp;&nbsp;4&nbsp;其他<input type="text" name="lung" class="borderBot1" size="3" />
			</td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="center">心&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;脏</td>
			<td style="padding:0;">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td height="30"><input type="text" name="heart" class="txt fright" size="1" maxlength="1" />
							心率<input type="text" name="heart" class="borderBot1" size="3" />次/分钟  &nbsp;&nbsp;&nbsp;&nbsp;  心律：1&nbsp;齐 &nbsp;&nbsp; 2&nbsp;不齐&nbsp;&nbsp;  3&nbsp;绝对不齐
							 
						</td>
					</tr>
					<tr>
						<td height="30"><input type="text" name="heart" class="txt fright" size="1" maxlength="1" />
							杂音：1&nbsp;无  &nbsp;&nbsp;&nbsp;&nbsp;   2&nbsp;有 <input type="text" name="heart" class="borderBot1" size="3" />         
							
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		
		<tr>
			<td colspan="2" valign="top" align="center">腹&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;部</td>
			<td style="padding:0; padding-top:3px;">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td><input type="text" name="abdomen" class="txt fright" size="1" maxlength="1" />
							压痛：1&nbsp;无&nbsp;&nbsp;2&nbsp;有<input type="text" name="abdomen" class="borderBot1" size="6" />
							 
						</td>
					</tr>
					<tr>
						<td> <input type="text" name="abdomen" class="txt fright" size="1" maxlength="1" />
							包块：1&nbsp;无&nbsp;&nbsp;2&nbsp;有<input type="text" name="abdomen" class="borderBot1" size="6" />
							
						</td>
					</tr>
					<tr>
						<td><input type="text" name="abdomen" class="txt fright" size="1" maxlength="1" />
							肝大：1&nbsp;无&nbsp;&nbsp;2&nbsp;有<input type="text" name="abdomen" class="borderBot1" size="6" />
							 
						</td>
					</tr>
					<tr>
						<td><input type="text" name="abdomen" class="txt fright" size="1" maxlength="1" />
							脾大：1&nbsp;无&nbsp;&nbsp;2&nbsp;有<input type="text" name="abdomen" class="borderBot1" size="6" />
							 
						</td>
					</tr>
					<tr>
						<td><input type="text" name="abdomen" class="txt fright" size="1" maxlength="1" />
							移动性浊音：1&nbsp;无&nbsp;&nbsp;2&nbsp;有<input type="text" name="abdomen" class="borderBot1" size="6" />
							 
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		
		<tr>
			<td colspan="2" align="center" height="25">下肢水肿</td>
			<td><input type="text" name="legsEdema" class="txt fright" size="1" maxlength="1" value="${iaHealthCheck.legsEdema }" />
			 1&nbsp;无&nbsp;&nbsp;2&nbsp;单侧&nbsp;&nbsp;3&nbsp;双侧不对称 &nbsp;&nbsp;  4&nbsp;双侧对称
			 
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="25">足背动脉搏动</td>
			<td><input type="text" name="dorsalisPedis" class="txt fright" size="1" maxlength="1" value="${iaHealthCheck.dorsalisPedis }" />
			 1&nbsp;未触及&nbsp;&nbsp;2&nbsp;触及双侧对称&nbsp;&nbsp;3&nbsp;触及左侧弱或消失&nbsp;&nbsp;4&nbsp;触及右侧弱或消失
			 
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="25">肛门指诊</td>
			<td><input type="text" name="dre" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;未及异常&nbsp;&nbsp; 2&nbsp;触痛　&nbsp;&nbsp;  3&nbsp;包块　&nbsp;&nbsp;   4&nbsp;前列腺异常&nbsp;&nbsp; 5其他<input type="text" name="dre" class="borderBot1" size="2" />
			 
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="25">乳&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;腺</td>
			<td><span class="fright"><input type="text" name="breast" class="txt" size="1" maxlength="1" />/<input type="text" name="breast" class="txt" size="1" maxlength="1" />/<input type="text" name="breast" class="txt" size="1" maxlength="1" />/<input type="text" name="breast" class="txt" size="1" maxlength="1" /></span>
			 1&nbsp;未见异常 2&nbsp;乳房切除3&nbsp;异常泌乳4&nbsp;乳腺包块5&nbsp;其他<input type="text" name="breast" class="borderBot1" size="2" />
			 
			</td>
		</tr>
		
		<tr>
			<td rowspan="5" align="center" width="25">妇科*</td>
			<td width="40" align="center" height="25">外阴</td>
			<td><input type="text" name="gynecology" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;未见异常 &nbsp;&nbsp;  2&nbsp;异常<input type="text" name="gynecology" class="borderBot1" size="8" />
			
			</td>
		</tr>
		<tr>
			<td align="center" height="25">阴道</td>
			<td><input type="text" name="gynecology" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;未见异常  &nbsp;&nbsp; 2&nbsp;异常<input type="text" name="gynecology" class="borderBot1" size="8" />
			
			</td>
		</tr>
		<tr>
			<td align="center" height="25">宫颈</td>
			<td><input type="text" name="gynecology" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;未见异常 &nbsp;&nbsp;  2&nbsp;异常<input type="text" name="gynecology" class="borderBot1" size="8" />
			
			</td>
		</tr>
		<tr>
			<td align="center" height="25">宫体</td>
			<td><input type="text" name="gynecology" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;未见异常 &nbsp;&nbsp;  2&nbsp;异常<input type="text" name="gynecology" class="borderBot1" size="8" />
			
			</td>
		</tr>
		<tr>
			<td align="center" height="25">附件</td>
			<td><input type="text" name="gynecology" class="txt fright" size="1" maxlength="1" />
			 1&nbsp;未见异常 &nbsp;&nbsp;  2&nbsp;异常<input type="text" name="gynecology" class="borderBot1" size="8" />
			
			</td>
		</tr>
		
		<tr>
			<td colspan="2" height="25" align="center">其&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;他*</td>
			<td>
				<input type="text" name="physicalOther" class="txt border0" value="${iaHealthCheck.physicalOther }" />
			</td>
		</tr>
		
		
		<tr>
			<td rowspan="5">
			 &nbsp;
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">血常规*</td>
			<td>
				血红蛋白<input type="text" name="bloodRoutine" class="borderBot1" size="3" />g/L
				白细胞<input type="text" name="bloodRoutine" class="borderBot1" size="3" />×10<sup>9</sup>/L
				血小板<input type="text" name="bloodRoutine" class="borderBot1" size="3" />×10<sup>9</sup>/L<br />
				其他<input type="text" name="bloodRoutine" class="borderBot1" size="40" />
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">尿常规*</td>
			<td>
				尿蛋白<input type="text" name="urineRoutine" class="borderBot1" size="11" />
				尿糖<input type="text" name="urineRoutine" class="borderBot1" size="11" />
				尿酮体<input type="text" name="urineRoutine" class="borderBot1" size="11" />
				尿潜血<input type="text" name="urineRoutine" class="borderBot1" size="11" />
				其他<input type="text" name="urineRoutine" class="borderBot1" size="30" />
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2" align="center">空腹血糖*</td>
			<td>
				<input type="text" name="glu" class="borderBot1" size="20" />mmol/L 或
				<input type="text" name="glu" class="borderBot1" size="20" />mg/dL
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2" align="center">心电图*</td>
			<td>
				<input type="text" name="ecg" class="txt fright" size="1" maxlength="1" />
				1&nbsp;正常 &nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;异常
				<input type="text" name="ecg" class="borderBot1" size="30" />
			</td>
		</tr>
	   </tbody>
   </table>
  </div>
  
  
  <div id="page3" style="padding-top:60px;">
   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
	   <tbody>
		<tr> 
		 <td width="40" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td>
		 <td width="50" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
		 <td width="44" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
		 <td width="" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
		</tr>
		<tr>
			<td rowspan="12" align="center" width="35" style="border-top:0;">
			 辅<br />助<br />检<br />查
			</td>
		</tr>
		<tr>
			<td height="25" colspan="2" width="240" style="border-top:0;" align="center">尿微量白蛋白*</td>
			<td width="510" style="border-top:0;">
			   <input type="text" name="mau" class="borderBot1" size="30" value="${iaHealthCheck.mau }" />mg/dL
			</td>
		</tr>
		<tr>
			<td height="25" colspan="2" align="center">大便潜血*</td>
			<td>
				<input type="text" name="occultBlood" class="txt fright" size="1" maxlength="1" value="${iaHealthCheck.occultBlood }" />
				1阴性  2阳性
			</td>
		</tr>
		<tr>
			<td height="25" colspan="2" align="center">糖化血红蛋白*</td>
			<td>
			<input type="text" name="glycatedHemoglobin" class="borderBot1" size="4" value="${iaHealthCheck.glycatedHemoglobin }" />%
			</td>
		</tr>
		<tr>
			<td height="25" colspan="2" align="center">乙型肝炎<br />表面抗原*
</td>
			<td>
				<input type="text" name="hbsag" class="txt fright" size="1" maxlength="1" value="${iaHealthCheck.hbsag }" />
				1阴性  2阳性
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">肝功能*</td>
			<td>
			  血清谷丙转氨酶<input type="text" name="liverFunction" class="borderBot1" size="4" />U/L
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;血清谷草转氨酶<input type="text" name="liverFunction" class="borderBot1" size="4" />U/L<br />
			  白蛋白<input type="text" name="liverFunction" class="borderBot1" size="11" />g/L
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;总胆红素<input type="text" name="liverFunction" class="borderBot1" size="4" />μmol/L<br />
			  结合胆红素<input type="text" name="liverFunction" class="borderBot1" style="width:86px;" />μmol/L
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">肾功能*</td>
			<td>
			  血清肌酐<input type="text" name="renalFunction" class="borderBot1" size="4" />μmol/L
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;血尿素氮<input type="text" name="renalFunction" class="borderBot1" size="4" />mmol/L<br />
			  血钾浓度<input type="text" name="renalFunction" class="borderBot1" size="4" />mmol/L
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;血钠浓度<input type="text" name="renalFunction" class="borderBot1" size="4" />mmol/L		  
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">血   脂*</td>
			<td>
			  总胆固醇<input type="text" name="bloodFat" class="borderBot1" size="4" />mmol/L
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;甘油三酯<input type="text" name="bloodFat" class="borderBot1" size="4" />mmol/L<br />
			  血清低密度脂蛋白胆固醇<input type="text" name="bloodFat" class="borderBot1" size="4" />mmol/L<br />
			  血清高密度脂蛋白胆固醇<input type="text" name="bloodFat" class="borderBot1" size="4" />mmol/L			  
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="25">胸部X线片*</td>
			<td>
			  <input type="text" name="chestXray" class="txt fright" size="1" maxlength="1" />
			  1&nbsp;正常&nbsp;&nbsp;&nbsp;&nbsp;  2&nbsp;异常<input type="text" name="chestXray" class="borderBot1" size="4" />
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="25">B   超*</td>
			<td>
			  <input type="text" name="bultrasound" class="txt fright" size="1" maxlength="1" />
			  1&nbsp;正常 &nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;异常<input type="text" name="bultrasound" class="borderBot1" size="4" />
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="25">宫颈涂片*</td>
			<td>
			  <input type="text" name="papSmear" class="txt fright" size="1" maxlength="1" />
			  1&nbsp;正常 &nbsp;&nbsp;&nbsp;&nbsp; 2&nbsp;异常<input type="text" name="papSmear" class="borderBot1" size="4" />
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="25">其   他*</td>
			<td>
			  <input type="text" name="assistantOther" class="border0" value="${iaHealthCheck.assistantOther }" />
			</td>
		</tr>
		
		
		<tr>
			<td rowspan="10" align="center">
			 中医体质辨识*
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">平和质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是&nbsp;&nbsp;&nbsp;&nbsp;    2&nbsp;基本是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">气虚质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是 &nbsp;&nbsp;&nbsp;&nbsp;   2&nbsp;倾向是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">阳虚质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是 &nbsp;&nbsp;&nbsp;&nbsp;   2&nbsp;倾向是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">阴虚质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是  &nbsp;&nbsp;&nbsp;&nbsp;  2&nbsp;倾向是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">痰湿质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是 &nbsp;&nbsp;&nbsp;&nbsp;   2&nbsp;倾向是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">湿热质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是  &nbsp;&nbsp;&nbsp;&nbsp;  2&nbsp;倾向是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">血瘀质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是 &nbsp;&nbsp;&nbsp;&nbsp;   2&nbsp;倾向是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">气郁质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是 &nbsp;&nbsp;&nbsp;&nbsp;   2&nbsp;倾向是
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">特秉质</td>
			<td>
				<input type="text" name="bibu" class="txt fright" size="1" maxlength="1" />
				1&nbsp;是 &nbsp;&nbsp;&nbsp;&nbsp;   2&nbsp;倾向是
			</td>
		</tr>
		
		
		<tr>
			<td rowspan="8" align="center">
			 现存主要健康问题
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">脑血管疾病</td>
			<td> 
1未发现&nbsp;2缺血性卒中&nbsp;3脑出血&nbsp;4蛛网膜下腔出血&nbsp;5短暂性脑缺血 <br/>
	  <span class=" fright">
		 <input type="text" name="cerebrovascular" class="txt" size="1" maxlength="1" />/<input type="text" name="cerebrovascular" class="txt" size="1" maxlength="1" />/<input type="text" name="cerebrovascular" class="txt" size="1" maxlength="1" />/<input type="text" name="cerebrovascular" class="txt" size="1" maxlength="1" />/<input type="text" name="cerebrovascular" class="txt" size="1" maxlength="1" />
	  </span>
6其他<input type="text" name="cerebrovascular" class="borderBot1" size="15" />
	 
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">肾脏疾病</td>
			<td>1未发现&nbsp;2糖尿病肾病&nbsp;3肾功能衰竭&nbsp;4急性肾炎&nbsp;5慢性肾炎 <br />  
			<span class=" fright">
		  <input type="text" name="kidney" class="txt" size="1" maxlength="1" />/<input type="text" name="kidney" class="txt" size="1" maxlength="1" />/<input type="text" name="kidney" class="txt" size="1" maxlength="1" />/<input type="text" name="kidney" class="txt" size="1" maxlength="1" />/<input type="text" name="kidney" class="txt" size="1" maxlength="1" />
	  </span>
6其他<input type="text" class="borderBot1" size="15" />
	  
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">心脏疾病</td>
			<td>1未发现&nbsp;2心肌梗死&nbsp;3心绞痛&nbsp;4冠状动脉血运重建&nbsp;5充血性心力衰竭<br />
			<span class=" fright">
		 <input type="text" name="heartDisease" class="txt" size="1" maxlength="1" />/<input type="text" name="heartDisease" class="txt" size="1" maxlength="1" />/<input type="text" name="heartDisease" class="txt" size="1" maxlength="1" />/<input type="text" name="heartDisease" class="txt" size="1" maxlength="1" />/<input type="text" name="heartDisease" class="txt" size="1" maxlength="1" />
	  </span>
	  6 心前区疼痛&nbsp;7其他<input type="text" class="borderBot1" size="3" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="25" align="center">血管疾病</td>
			<td>
			<span class=" fright">
		  <input type="text" name="vascular" class="txt" size="1" maxlength="1" />/<input type="text" name="vascular" class="txt" size="1" maxlength="1" />/<input type="text" name="vascular" class="txt" size="1" maxlength="1" />
	  </span>
				1未发现&nbsp;&nbsp; 2夹层动脉瘤&nbsp;&nbsp;  3动脉闭塞性疾病 &nbsp;&nbsp;4其他<input type="text" name="vascular" class="borderBot1" size="3" />
	  
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center">眼部疾病</td>
			<td>
				1未发现&nbsp;&nbsp; 2视网膜出血或渗出&nbsp;&nbsp; 3视乳头水肿&nbsp;&nbsp; 4白内障<br />	
			 <span class=" fright">
		  <input type="text" name="eyeDisease" class="txt" size="1" maxlength="1" />/<input type="text" name="eyeDisease" class="txt" size="1" maxlength="1" />/<input type="text" name="eyeDisease" class="txt" size="1" maxlength="1" />
	  </span>5其他<input type="text" name="eyeDisease" class="borderBot1" size="3" />
	 
			</td>
		</tr>
		<tr>
			<td height="25" colspan="2" align="center">神经系统疾病</td>
			<td>
	  <span class=" fright">
		  <input type="text" name="nervousDisease" class="txt" size="1" maxlength="1" />
	  </span>
				1未发现 &nbsp;&nbsp;&nbsp;&nbsp;2有<input type="text" name="nervousDisease" class="borderBot1" size="3" />

			</td>
		</tr>
		<tr>
			<td height="25" colspan="2" align="center">其他系统疾病</td>
			<td>
	  <span class=" fright">
		  <input type="text" name="currentOther" class="txt" size="1" maxlength="1" />
	  </span>
				1未发现&nbsp;&nbsp;&nbsp;&nbsp; 2有<input type="text" name="currentOther" class="borderBot1" size="3" />

			</td>
		</tr>
		
	   </tbody>
   </table>
  </div>
  
  
  <div id="page4" style="padding-top:60px;">
   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
	   <tbody>
		<tr> 
		 <td width="40" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td>
		 <td width="50" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
		 <td width="44" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td>  
		 <td width="100" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td>  
		 <td width="" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td>  
		 <td width="" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
		 <td width="160" style="border:0 solid #fff; height:0; border-color:#fff; background:#fff;"></td> 
		</tr>
		<tr>
			<td rowspan="7" style="border-top:0;" align="center" width="35">
			 住院治疗情况
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2" style="border-top:0;" width="220" rowspan="3" align="center">住院史</td>
			<td align="center" width="120" style="border-top:0;">
			  入/出院日期
			</td>
			<td align="center" width="80" style="border-top:0;">
			  原 因
			</td>
			<td align="center" width="120" style="border-top:0;">
			  医疗机构名称
			</td>
			<td align="center" width="120" style="border-top:0;">
			  病案号
			</td>
		</tr>
		<tr>
			<td height="30">
			  <input type="text" name="inHospital" class="border0" style="width:40px;" />/<input type="text" name="inHospital" class="border0" style="width:40px;" />
			</td>
			<td>
			  <input type="text" name="inHospital" class="border0" />
			</td>
			<td>
			  <input type="text" name="inHospital" class="border0" />
			</td>
			<td>
			  <input type="text" name="inHospital" class="border0" />
			</td>
		</tr>
		<tr>
			<td height="30">
			  <input type="text" name="inHospital" class="border0" style="width:40px;" />/<input type="text" name="inHospital" class="border0" style="width:40px;" />
			</td>
			<td>
			  <input type="text" name="inHospital" class="border0" />
			</td>
			<td>
			  <input type="text" name="inHospital" class="border0" />
			</td>
			<td>
			  <input type="text" name="inHospital" class="border0" />
			</td>
		</tr>
		<tr>
			<td height="30" colspan="2" rowspan="3" align="center">家  庭<br />病床史
            </td>
			<td align="center">
			  建/撤床日期
			</td>
			<td align="center">
			  原 因
			</td>
			<td align="center">
			  医疗机构名称
			</td>
			<td align="center">
			  病案号
			</td>
		</tr>
		<tr>
			<td height="30">
			  <input type="text" name="familyWard" class="border0" style="width:40px;" />/<input type="text" name="familyWard" class="border0" style="width:40px;" />
			</td>
			<td>
			  <input type="text" name="familyWard" class="border0" />
			</td>
			<td>
			  <input type="text" name="familyWard" class="border0" />
			</td>
			<td>
			  <input type="text" name="familyWard" class="border0" />
			</td>
		</tr>
		<tr>
			<td height="30">
			  <input type="text" name="familyWard" class="border0" style="width:40px;" />/<input type="text" name="familyWard" class="border0" style="width:40px;" />
			</td>
			<td>
			  <input type="text" name="familyWard" class="border0" />
			</td>
			<td>
			  <input type="text" name="familyWard" class="border0" />
			</td>
			<td>
			  <input type="text" name="familyWard" class="border0" />
			</td>
		</tr>
		
		<tr>
			<td rowspan="8" align="center">
			 住院治疗情况
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="30">
			  药物名称
			</td>
			<td align="center">
			  用法
			</td>
			<td width="50" align="center">
			  用量
			</td>
			<td align="center">
			  用药时间
			</td>
			<td align="center" width="180">
			  服药依从性<br />
1规律　2间断　3不服药
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  1<input type="text" name="hospitalCourse" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			 <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  2<input type="text" name="hospitalCourse" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			 <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  3<input type="text" name="hospitalCourse" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			 <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  4<input type="text" name="hospitalCourse" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			 <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  5<input type="text" name="hospitalCourse" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			 <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  6<input type="text" name="hospitalCourse" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			 <input type="text" name="hospitalCourse" class="border0" />
			</td>
			<td>
			  <input type="text" name="hospitalCourse" class="border0" />
			</td>
		</tr>
		
		<tr>
			<td rowspan="5" align="center">
			 非免疫
规划预防接种史
			</td>
		</tr>
		<tr>
			<td colspan="2" align="center" height="30">
			  名称
			</td>
			<td align="center">
			  接种日期
			</td>
			<td colspan="3" align="center">
			  接种机构
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  1<input type="text" name="vaccination" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="vaccination" class="border0" />
			</td>
			<td colspan="3">
			  <input type="text" name="vaccination" class="border0" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  2<input type="text" name="vaccination" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="vaccination" class="border0" />
			</td>
			<td colspan="3">
			  <input type="text" name="vaccination" class="border0" />
			</td>
		</tr>
		<tr>
			<td colspan="2" height="30">
			  3<input type="text" name="vaccination" class="border0" style="width:60px;" />
			</td>
			<td>
			  <input type="text" name="vaccination" class="border0" />
			</td>
			<td colspan="3">
			  <input type="text" name="vaccination" class="border0" />
			</td>
		</tr>
		
		<tr>
			<td rowspan="2" align="center">
			 健康<br />评价
			</td>
		</tr>
		<tr>
			<td colspan="6" style="padding:3px 0;">
				<table border="0" width="100%" cellpadding="0" cellspacing="0">
					<tr>
						<td><input type="text" name="healthEvaluation" class="txt fright" size="1" maxlength="1" />
							1体检无异常
							 
						</td>
					</tr>
					<tr>
						<td>
							2有异常<br />
							异常1<input type="text" name="healthEvaluation" class="borderBot1" size="40" /><br />
							异常2<input type="text" name="healthEvaluation" class="borderBot1" size="40" /><br />
							异常3<input type="text" name="healthEvaluation" class="borderBot1" size="40" /><br />
							异常4<input type="text" name="healthEvaluation" class="borderBot1" size="40" /><br />
						</td>
					</tr>
				</table>
			</td>
		</tr>
		
		<tr>
			<td align="center">
			 健<br />康<br />指<br />导
			</td>
			<td colspan="3">
				1纳入慢性病患者健康管理<br />
				2建议复查<br />
				3建议转诊<br />
				<span class=" fright">
						  <input type="text" name="healthGuidance" name="healthGuidance" class="txt" size="1" maxlength="1" />/<input type="text" name="healthGuidance" class="txt" size="1" maxlength="1" />/<input type="text" name="healthGuidance" class="txt" size="1" maxlength="1" />/<input type="text" name="healthGuidance" class="txt" size="1" maxlength="1" />
			    </span>

			</td>
			<td colspan="3">
				<span class="fright"><input type="text" name="hazards" class="txt" size="1" maxlength="1" />/<input type="text" name="hazards" class="txt" size="1" maxlength="1" />/<input type="text" name="hazards" class="txt" size="1" maxlength="1" />/<input type="text" name="hazards" class="txt" size="1" maxlength="1" />/<input type="text" name="hazards" class="txt" size="1" maxlength="1" />/<input type="text" name="hazards" class="txt" size="1" maxlength="1" /></span>危险因素控制：&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br />
			    1戒烟&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				2健康饮酒&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				3饮食&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
				4锻炼<br />5减体重（目标<input type="text" name="hazards" class="borderBot1" size="9" />）<br />
6建议接种疫苗<input type="text" name="hazards" class="borderBot1" size="10" /><br />
7其他<input type="text" name="hazards" class="borderBot1" size="33" />
			</td>
		</tr>
	   </tbody>
   </table>
  </div>
	<input id="btnSubmit" class="btn btn-primary" type="button" value="保    存" onclick="return saveHealthCheck()" />
	<input id="btnSubmit" class="btn" type="button" value="返    回" onclick="history.go(-1)"/>
</form>
<script>
$(function(){
	init();
});

var saveHealthCheck = function(){
	loading('正在提交，请稍等...');
	document.forms[0].submit();
};
var init = function(){
	initByComma('${iaHealthCheck.checkDate }', 'checkDate');
	initNo('${iaHealthCheck.no }', 'no');
	initByComma('${iaHealthCheck.symptom }', 'symptom');
	initByComma('${iaHealthCheck.bloodLeft }', 'bloodLeft');
	initByComma('${iaHealthCheck.knowAbility }', 'knowAbility');
	initByComma('${iaHealthCheck.emotion }', 'emotion');
	//生活方式
	initByComma('${iaHealthCheck.physicalTraining }', 'physicalTraining');
	initByComma('${iaHealthCheck.eatingHabits }', 'eatingHabits');
	initByComma('${iaHealthCheck.smokingCondition }', 'smokingCondition');
	initByComma('${iaHealthCheck.drinkingCondition }', 'drinkingCondition');
	initByComma('${iaHealthCheck.occupationalHazard }', 'occupationalHazard');
	//脏器功能
	initByComma('${iaHealthCheck.mouth }', 'mouth');
	initByComma('${iaHealthCheck.eyesight }', 'eyesight');
	initByComma('${iaHealthCheck.listening }', 'listening');
	initByComma('${iaHealthCheck.motorFunction }', 'motorFunction');
	//查体
	initByComma('${iaHealthCheck.fundus }', 'fundus');
	initByComma('${iaHealthCheck.skin }', 'skin');
	initByComma('${iaHealthCheck.sclera }', 'sclera');
	initByComma('${iaHealthCheck.lymphNode }', 'lymphNode');
	initByComma('${iaHealthCheck.lung }', 'lung');
	initByComma('${iaHealthCheck.heart }', 'heart');
	initByComma('${iaHealthCheck.abdomen }', 'abdomen');
	initByComma('${iaHealthCheck.dre }', 'dre');
	initByComma('${iaHealthCheck.breast }', 'breast');
	initByComma('${iaHealthCheck.gynecology }', 'gynecology');
	initByComma('${iaHealthCheck.bloodRoutine }', 'bloodRoutine');
	initByComma('${iaHealthCheck.urineRoutine }', 'urineRoutine');
	initByComma('${iaHealthCheck.glu }', 'glu');
	initByComma('${iaHealthCheck.ecg }', 'ecg');
	//辅助检查
	initByComma('${iaHealthCheck.liverFunction }', 'liverFunction');
	initByComma('${iaHealthCheck.renalFunction }', 'renalFunction');
	initByComma('${iaHealthCheck.bloodFat }', 'bloodFat');
	initByComma('${iaHealthCheck.chestXray }', 'chestXray');
	initByComma('${iaHealthCheck.bultrasound }', 'bultrasound');
	initByComma('${iaHealthCheck.papSmear }', 'papSmear');
	initByComma('${iaHealthCheck.bibu }', 'bibu');
	//
	initByComma('${iaHealthCheck.cerebrovascular }', 'cerebrovascular');
	initByComma('${iaHealthCheck.kidney }', 'kidney');
	initByComma('${iaHealthCheck.heartDisease }', 'heartDisease');
	initByComma('${iaHealthCheck.vascular }', 'vascular');
	initByComma('${iaHealthCheck.eyeDisease }', 'eyeDisease');
	initByComma('${iaHealthCheck.nervousDisease }', 'nervousDisease');
	initByComma('${iaHealthCheck.currentOther }', 'currentOther');
	//
	initByComma('${iaHealthCheck.inHospital }', 'inHospital');
	initByComma('${iaHealthCheck.familyWard }', 'familyWard');
	initByComma('${iaHealthCheck.hospitalCourse }', 'hospitalCourse');
	initByComma('${iaHealthCheck.vaccination }', 'vaccination');
	initByComma('${iaHealthCheck.healthEvaluation }', 'healthEvaluation');
	initByComma('${iaHealthCheck.healthGuidance }', 'healthGuidance');
	initByComma('${iaHealthCheck.hazards }', 'hazards');
};
var initByComma = function(data, inputName){
	var ds = data.split(',');
	for(var i=0;i<ds.length;i++){
		$("input[name='"+inputName+"']:eq("+i+")").val(ds[i]);
	}
};
var initNo = function(data, inputName){
	var ds = data.substring(9);
	for(var i=0;i<ds.length;i++){
		$("input[name='"+inputName+"']:eq("+i+")").val(ds.charAt(i));
	}
};
function jsBMI(){
	var height = $("#height").val(); 
	var weight = $("#weight").val();
	
	if(height == "" || height == undefined || height == null){
		alert("请填写身高");
		$("#weight").val("")
	}else{
		var sysHeight = parseFloat(height/100).toFixed(2);
		$("#bmi").val(parseFloat(weight*2/(sysHeight*sysHeight)).toFixed(2));
	}
}
</script>	
</body>
</html>