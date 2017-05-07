<%@ page contentType="text/html;charset=UTF-8"%>
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
		
		formatField('${iaBaseInfo.payType }',"payType");
		formatField('${iaBaseInfo.drugAllergy }',"drugAllergy");
		formatField('${iaBaseInfo.exposure }',"exposure");
		formatField('${iaBaseInfo.disease }',"disease");
		formatField('${iaBaseInfo.operation }',"operation");
		formatField('${iaBaseInfo.trauma }',"trauma");
		formatField('${iaBaseInfo.transfusion }',"transfusion");
		formatField('${iaBaseInfo.family }',"family");
		formatField('${iaBaseInfo.genetic }',"genetic");
		formatField('${iaBaseInfo.disability }',"disability");
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
<title>个人基本信息表</title>
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
       <p><font class="font18"><strong>个人基本信息表</strong></font> </p> 
       <input type="hidden" name="icId" id="icId" value="${iaBaseInfo.icId }">
       </td>
      </div>
	  </td> 
    </tr> 
    <tr> 
     <td height="30" width="90" align="right"> 
       <strong class="nameSty">姓名：</strong>
	</td>
	<td width="300">
	    <input type="text" class="border0 textleft" id="name" name="name" value="${iaBaseInfo.name }" readonly="readonly"/>
	  </td>
	  <td align="center">
	  <strong>编号</strong>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 9, 10)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 10, 11)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 11, 12)}" readonly="readonly"/>
	  -
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 12, 13)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 13, 14)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 14, 15)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 15, 16)}" readonly="readonly"/>
	  <input type="text" class="txt" size="1" maxlength="1" name="no" id="no" value="${fn:substring(iaBaseInfo.no, 16, 17)}" readonly="readonly"/>
	  </td>
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="90" height="30" align="center"> 性&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;别 </td> 
     <td width="320"> 
        <%--  <c:if test="${iaBaseInfo.sex == '男' || iaBaseInfo.sex == '1'}">
			<input id="sex" name="sex" type="text" class="txt fright" size="1" maxlength="1" value="1" readonly="readonly"/>
		</c:if>
		<c:if test="${iaBaseInfo.sex == '女' || iaBaseInfo.sex == '2'}">
			<input id="sex" name="sex" type="text" class="txt fright" size="1" maxlength="1" value="2" readonly="readonly"/>
		</c:if> --%>
		<c:choose>
		    <c:when test="${iaBaseInfo.sex == '男' || iaBaseInfo.sex == '1'}">
		    	<input id="sex" name="sex" type="text" class="txt fright" size="1" maxlength="1" value="1" readonly="readonly"/>
		    </c:when>
		    <c:when test="${iaBaseInfo.sex == '女' || iaBaseInfo.sex == '2'}">
		    	<input id="sex" name="sex" type="text" class="txt fright" size="1" maxlength="1" value="2" readonly="readonly"/>
		    </c:when>
		    <c:otherwise>
		    	<input id="sex" name="sex" type="text" class="txt fright" size="1" maxlength="1" readonly="readonly"/>
		    </c:otherwise>
		</c:choose>
		 <label>0未知的性别</label>
		 <label>1男</label>
         <label>2女</label>
         <label>9未说明的性别</label>
	 </td> 
     <td width="36" align="center"> 出生日期 </td> 
     <td> 
		<span class="fright">
	  <input type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 0, 1)}" readonly="readonly"/><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 1, 2)}" readonly="readonly"/><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 2, 3)}" readonly="readonly"/><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 3, 4)}" readonly="readonly"/>
	  <input type="hidden" class="txt" size="1" maxlength="1" id="birth" name="birth" value="-" readonly="readonly"/><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 5, 6)}" readonly="readonly"/><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 6, 7)}" readonly="readonly"/>
	  <input type="hidden" class="txt" size="1" maxlength="1" id="birth" name="birth" value="-" readonly="readonly"/><input style="margin-left:6px;" type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 8, 9)}" readonly="readonly"/><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="birth" name="birth" value="${fn:substring(iaBaseInfo.birth, 9, 10)}" readonly="readonly"/>
	  </span>
	 </td> 
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr height=""> 
     <td width="90" class="bordertop0" align="center"> 身份证号 </td> 
     <td width="203"> 
		 <input type="text" class="border0" id="cardNo" name="cardNo" value="${iaBaseInfo.cardNo }" readonly="readonly"/>
	 </td> 
     <td width="110" align="center"> 工作单位 </td> 
     <td> 
		<input type="text" class="border0" id="workUnit" name="workUnit" value="${iaBaseInfo.workUnit }"/>
	 </td> 
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="90" height="30" align="center"> 本人电话 </td> 
     <td width="117"> 
		 <input type="text" class="border0" id="tel" name="tel" value="${iaBaseInfo.tel }"/>
	 </td> 
     <td width="79" align="center"> 联系人姓名 </td> 
     <td width="110"> 
		<input type="text" class="border0" id="linkman" name="linkman" value="${iaBaseInfo.linkman }"/>
	 </td> 
     <td width="50" align="center"> 联系人电话 </td> 
     <td> 
		<input type="text" class="border0" id="linkmanTel" name="linkmanTel" value="${iaBaseInfo.linkmanTel }"/>
	 </td>
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="90" height="" align="center"> 常住类型 </td> 
     <td width="203"> 
		 <input type="text" class="txt fright" style="margin-top:2px;" size="1" maxlength="1" id="resident" name="resident" value="${iaBaseInfo.resident }"/>
		<label>1户籍</label>   
		<label>2非户籍</label>
	 </td> 
     <td width="110" align="center"> 民族 </td> 
     <td> 
				<input type="text" class="txt fright" style="margin-top:2px;" size="1" maxlength="1" id="nation" name="nation" value="1" readonly="readonly"/>
		<label>1汉族</label> 
		<label>2少数民族</label>
		<c:choose>
			<c:when test="${iaBaseInfo.nation == '汉' || iaBaseInfo.nation == 1}">
				<input type="text" class="borderBot1" size="4" readonly="readonly"/>
			</c:when>
		</c:choose>
	 </td> 
    </tr> 
   </tbody>
  </table>
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
	<tr> 
     <td width="90" height="" align="center"> 血&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;型 </td> 
     <td> 
	 <span class="fright">
		<input type="text" class="txt" size="1" maxlength="1" id="blood" name="blood" value="${iaBaseInfo.blood }"/>/<input type="text" class="txt" size="1" maxlength="1" id="rhf" name="rhf" value="${iaBaseInfo.rhf }"/></span>
		<label>1 A型</label>   <label>2 B型</label>   <label>3 O型</label>   <label>4 AB型</label>  <label>5不详 / RH阴性：</label><label>1否</label>  <label>2是</label>  <label>3不详</label>   
		
	 </td>  
    </tr>
	<tr> 
     <td width="90" height="" align="center">文化程度 </td> 
     <td> 
	    <input type="text" class="txt fright" style="margin-top:2px;" size="1" maxlength="1" id="culture" name="culture" value="${iaBaseInfo.culture }"/>
		<label>1文盲及半文盲</label>  <label>2小学</label>  <label>3初中</label>  <label>4高中/技校/中专</label>  <label>5大学专科及以上</label>  <label>6不详</label>   
		
	 </td>  
    </tr>
	<tr> 
     <td width="90" align="center">职&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;业 </td> 
     <td>
		<label>1国家机关、党群组织、企业、事业单位负责人</label> 
		<label>2专业技术人员 </label>
		<label>3办事人员和有关人员 </label>
		<input type="text" class="txt fright" size="1" maxlength="1" id="profession" name="profession" value="${iaBaseInfo.profession }"/>
		<label>4商业、服务业人员  </label>
		<label>5 农、林、牧、渔、水利业生产人员 </label> 
		<label>6生产、运输设备操作人员及有关人员</label><label>7军人</label>  
		<label>8不便分类的其他从业人员 </label>	
	 </td>  
    </tr>
	<tr> 
     <td width="90" height="" align="center">婚姻状况 </td> 
     <td> 
		<input type="text" class="txt fright" style="margin-top:2px;" size="1" maxlength="1" id="marriage" name="marriage" value="${iaBaseInfo.marriage }"/>
		<label>1未婚</label>  <label>2 已婚</label>  <label>3丧偶</label>  <label>4离婚</label>  <label>5未说明的婚姻状况</label>   
	 </td>  
    </tr>
	<tr> 
     <td width="90" height="30" align="center">医疗费用<br />
		支付方式
	 </td> 
     <td> <span class=" fright">
		<input type="text" class="txt" size="1" maxlength="1" id="payType" name="payType" />/<input type="text" class="txt" size="1" maxlength="1" id="payType" name="payType" />/<input type="text" class="txt" size="1" maxlength="1" id="payType" name="payType" /></span>
		<span class="fleft">
			<label>1城镇职工基本医疗保险</label>  <label>2城镇居民基本医疗保险</label>  <label>3新型农村合作医疗</label><br /> 
			<label>4贫困救助</label>  <label>5商业医疗保险</label>   <label>6全公费</label>  <label>7全自费</label>  <label>
			8其他<input type="text" class="borderBot1" size="5" id="payType" name="payType" /> </label>
		</span>
		
	 </td>  
    </tr>
	<tr> 
     <td width="90" height="" align="center">药物过敏史 </td> 
     <td> 
	 <span class="fright">
		<input type="text" class="txt" size="1" maxlength="1" id="drugAllergy" name="drugAllergy" />/<input type="text" class="txt" size="1" maxlength="1" id="drugAllergy" name="drugAllergy" />/<input type="text" class="txt" size="1" maxlength="1" id="drugAllergy" name="drugAllergy" />/<input type="text" class="txt" size="1" maxlength="1" id="drugAllergy" name="drugAllergy" /></span>
		<label>1无</label>   <label>有：2青霉素</label>  <label>3磺胺</label>   <label>4链霉素</label>   <label>
		5其他<input type="text" class="borderBot1" size="5" id="drugAllergy" name="drugAllergy" /> </label>
		
	 </td>  
    </tr>
	<tr> 
     <td width="90" height="" align="center">暴 露 史 </td> 
     <td><span class=" fright" style="margin-top:2px;">
		<input type="text" class="txt" size="1" maxlength="1" id="exposure" name="exposure" />/<input type="text" class="txt" size="1" maxlength="1" id="exposure" name="exposure" />/<input type="text" class="txt" size="1" maxlength="1" id="exposure" name="exposure" /></span> 
		<label>1无</label>  <label>有：2化学品</label>    <label>3毒物</label>    <label>4射线</label>
		
	 </td>  
    </tr>
   </tbody>
  </table> 

   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
    <tbody>
	 <tr>
		<td width="16" class="firttr"></td>
		<td width="68" class="firttr"></td>
		<td class="firttr"></td>
	 </tr>
     <tr> 
      <td style="border-top:0" rowspan="5" width="90" align="center"> 既往史 </td> 
     </tr> 
     <tr> 
      <td align="center" style="border-top:0">疾 病</td> 
      <td style="border-top:0">
	  <label>1无</label>
<label>2高血压</label>
<label>3糖尿病</label>
<label>4冠心病</label>
<label>5慢性阻塞性肺疾病</label>
<label>6恶性肿瘤<input type="text" class="borderBot1" size="3" id="disease" name="disease" /></label><br />
<label>7脑卒中</label>
<label>8重性精神疾病</label>
<label>9结核病</label>
<label>10肝炎</label>
<label>11其他法定传染病</label>
<label>12职业病<input type="text" class="borderBot1" size="3" id="disease" name="disease" /></label><br />
<label>13其他<input type="text" class="borderBot1" size="3" id="disease" name="disease" /></label> <br />   
		            
		 <input type="text" class="txt" style="width:16px" id="disease" name="disease" />确诊时间<input type="text" class="border0" style="width:30px;" id="disease" name="disease" />年<input type="text" class="border0" style="width:20px;" id="disease" name="disease" />月&nbsp;/ 
		 <input type="text" class="txt" style="width:16px" id="disease" name="disease" />确诊时间<input type="text" class="border0" style="width:30px;" id="disease" name="disease" />年<input type="text" class="border0" style="width:20px;" id="disease" name="disease" />月&nbsp;/ 
		 <input type="text" class="txt" style="width:16px" id="disease" name="disease" />确诊时间<input type="text" class="border0" style="width:30px;" id="disease" name="disease" />年<input type="text" class="border0" style="width:20px;" id="disease" name="disease" />月&nbsp;<br />
		<input type="text" class="txt" style="width:16px" id="disease" name="disease" />确诊时间<input type="text" class="border0" style="width:30px;" id="disease" name="disease" />年<input type="text" class="border0" style="width:20px;" id="disease" name="disease" />月&nbsp;/ 
		<input type="text" class="txt" style="width:16px" id="disease" name="disease" />确诊时间<input type="text" class="border0" style="width:30px;" id="disease" name="disease" />年<input type="text" class="border0" style="width:20px;" id="disease" name="disease" />月&nbsp;/  
		<input type="text" class="txt" style="width:16px" id="disease" name="disease" />确诊时间<input type="text" class="border0" style="width:30px;" id="disease" name="disease" />年<input type="text" class="border0" style="width:20px;" id="disease" name="disease" />月
	  </td> 
     </tr> 
     <tr> 
      <td height="28" align="center">手 术 </td> 
      <td><input type="text" class="txt fright" style="margin-top:2px;" size="1" maxlength="1" id="operation" name="operation" />1&nbsp;无&nbsp;2&nbsp;有：名称1&nbsp;<input type="text" class="borderBot1" size="6" id="operation" name="operation" />&nbsp;时间&nbsp;<input type="text" class="borderBot1" size="3" id="operation" name="operation" />&nbsp;/ &nbsp;名称2&nbsp;<input type="text" class="borderBot1" size="6" id="operation" name="operation" />&nbsp;时间&nbsp;<input type="text" class="borderBot1" size="3" id="operation" name="operation" /></td> 
     </tr> 
     <tr> 
      <td height="28" align="center">外 伤 </td> 
      <td><input type="text" style="margin-top:2px;" class="txt fright" size="1" maxlength="1" id="trauma" name="trauma" />1&nbsp;无&nbsp;2&nbsp;有：名称1&nbsp;<input type="text" class="borderBot1" size="6" id="trauma" name="trauma" />&nbsp;时间&nbsp;<input type="text" class="borderBot1" size="3" id="trauma" name="trauma" />&nbsp;/ &nbsp;名称2&nbsp;<input type="text" class="borderBot1" size="6" id="trauma" name="trauma" />&nbsp;时间&nbsp;<input type="text" class="borderBot1" size="3" id="trauma" name="trauma" /></td> 
     </tr>
     <tr> 
      <td height="28" align="center">输 血 </td> 
      <td><input type="text" style="margin-top:2px;" class="txt fright" size="1" maxlength="1" id="transfusion" name="transfusion" />1&nbsp;无&nbsp;2&nbsp;有：名称1&nbsp;<input type="text" class="borderBot1" size="6" id="transfusion" name="transfusion" />&nbsp;时间&nbsp;<input type="text" class="borderBot1" size="3" id="transfusion" name="transfusion" />&nbsp;/ &nbsp;名称2&nbsp;<input type="text" class="borderBot1" size="6" id="transfusion" name="transfusion" />&nbsp;时间&nbsp;<input type="text" class="borderBot1" size="3" id="transfusion" name="transfusion" /></td> 
     </tr>
    </tbody>
   </table> 
   
   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
    <tbody>
	 <tr>
		<td width="90" class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td  class="firttr"></td>
		<td width="60" class="firttr"></td>
		<td  class="firttr"></td>
	 </tr>
     <tr> 
      <td rowspan="4" style="border-top:0" align="center"> 家族史 </td> 
     </tr> 
     <tr> 
      <td height="30" style="border-top:0" align="center">父 亲</td>
      <td style="border-top:0">
		  <input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" /><input type="text" class="borderBot1" size="1" id="family" name="family" /></td> 
      <td align="center" style="border-top:0">母 亲</td> 
      <td style="border-top:0">
			<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" /><input type="text" class="borderBot1" size="1" id="family" name="family" />
	  </td> 
     </tr> 
     <tr> 
      <td height="30" align="center">兄弟姐妹</td> 
      <td>
		  <input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" /><input type="text" class="borderBot1" size="1" id="family" name="family" />
	  </td> 
      <td align="center">子 女</td> 
      <td>
		  <input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" />/<input type="text" class="txt" style="width:16px" id="family" name="family" /><input type="text" class="borderBot1" size="1" id="family" name="family" />
	  </td> 
     </tr> 
     <tr> 
      <td colspan="4">
	  <label>1无</label>  <label>2高血压</label>  <label>3糖尿病</label>  <label>4冠心病</label>  <label>5慢性阻塞性肺疾病</label>  <label>6恶性肿瘤</label>  <label>7脑卒中</label>
	  <label>8重性精神疾病</label>  <label>9结核病</label>  <label>10肝炎</label>  <label>11先天畸形</label>  <label>12其他</label>
	  </td> 
     </tr> 
     <tr> 
      <td align="center" height="30">遗传病史</td> 
      <td colspan="4">
	  <span class=" fright">
		  <input type="text" class="txt" size="1" maxlength="1" id="genetic" name="genetic" />/<input type="text" class="txt" size="1" maxlength="1" id="genetic" name="genetic" />/<input type="text" class="txt" size="1" maxlength="1" id="genetic" name="genetic" />/<input type="text" class="txt" size="1" maxlength="1" id="genetic" name="genetic" />/<input type="text" class="txt" size="1" maxlength="1" id="genetic" name="genetic" />/<input type="text" class="txt" size="1" maxlength="1" id="genetic" name="genetic" />
	  </span>
	  <label>1无</label> <label>2有：疾病名称<input type="text" class="borderBot1" id="genetic" name="genetic" /></label>
	  
	  </td> 
     </tr> 
    </tbody>
   </table> 
 
   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
    <tbody>
     <tr> 
      <td width="90" align="center"> 残疾情况 </td> 
      <td> 
	  1无残疾&nbsp;&nbsp;&nbsp;&nbsp;2 视力残疾&nbsp;&nbsp;&nbsp;&nbsp;3听力残疾&nbsp;&nbsp;&nbsp;&nbsp;4言语残疾&nbsp;&nbsp;&nbsp;&nbsp;5 肢体残疾
	  <br />
	  <span class=" fright">
	   <input type="text" class="txt" size="1" maxlength="1" id="disability" name="disability" />/<input type="text" class="txt" size="1" maxlength="1" id="disability" name="disability" />/<input type="text" class="txt" size="1" maxlength="1" id="disability" name="disability" />/<input type="text" class="txt" size="1" maxlength="1" id="disability" name="disability" />/<input type="text" class="txt" size="1" maxlength="1" id="disability" name="disability" />/<input type="text" class="txt" size="1" maxlength="1" id="disability" name="disability" />
	   </span>
	  6智力残疾&nbsp;&nbsp;&nbsp;&nbsp;7精神残疾&nbsp;&nbsp;&nbsp;&nbsp;8其他残疾<input type="text" class="borderBot1" size="6" id="disability" name="disability" />
	  </td> 
     </tr> 
    </tbody>
   </table> 
 
   <table width="649" border="1" cellpadding="0" cellspacing="0"> 
    <tbody>
	 <tr>
		<td  width="90" class="firttr"></td>
		<td  width="100"  class="firttr"></td>
		<td class="firttr"></td>
	 </tr>
     <tr> 
      <td width="90" style="border-top:0" rowspan="6" align="center"> 生活环境* </td> 
     </tr> 
     <tr> 
      <td align="" style="border-top:0" width="100" height="30">厨房排风设施</td> 
      <td style="border-top:0"><input type="text" class="txt fright" size="1" maxlength="1" id="kitchen" name="kitchen" value="${iaBaseInfo.kitchen }"/>1无&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2油烟机&nbsp;&nbsp;&nbsp;&nbsp;3换气扇&nbsp;&nbsp;&nbsp;&nbsp;4烟囱
	  </td> 
     </tr> 
     <tr> 
      <td align="" height="30">燃料类型</td> 
      <td><input type="text" class="txt fright" size="1" maxlength="1" id="fuelType" name="fuelType" value="${iaBaseInfo.fuelType }"/>1液化气&nbsp;&nbsp;&nbsp;&nbsp;2煤&nbsp;&nbsp;&nbsp;&nbsp;3天然气&nbsp;&nbsp;&nbsp;&nbsp;4沼气&nbsp;&nbsp;&nbsp;&nbsp;5柴火&nbsp;&nbsp;&nbsp;&nbsp;6其他
      </td> 
     </tr> 
     <tr> 
      <td align="" height="30">饮水</td> 
      <td><input type="text" class="txt fright" size="1" maxlength="1" id="drink" name="drink" value="${iaBaseInfo.drink }"/>1自来水&nbsp;&nbsp;&nbsp;&nbsp;2经净化过滤的水&nbsp;&nbsp;&nbsp;&nbsp;3井水&nbsp;&nbsp;&nbsp;4河湖水&nbsp;&nbsp;5塘水&nbsp;6其他
      </td> 
     </tr>  
     <tr> 
      <td align="" height="30">厕所</td> 
      <td><input type="text" class="txt fright" size="1" maxlength="1" id="wc" name="wc" value="${iaBaseInfo.wc }"/>1卫生厕所&nbsp;&nbsp;2一格或二格粪池式&nbsp;&nbsp;3马桶&nbsp;&nbsp;4露天粪坑&nbsp;&nbsp;5简易棚厕
      </td> 
     </tr>  
     <tr> 
      <td align="" height="30">禽畜栏</td> 
      <td><input type="text" class="txt fright" size="1" maxlength="1" id="livestock" name="livestock" value="${iaBaseInfo.livestock }"/>1单设&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;2室内&nbsp;&nbsp;&nbsp;&nbsp;3室外
	  </td> 
     </tr>   
    </tbody>
   </table> 
  
  </div>
	<input id="btnSubmit" class="btn btn-primary" type="button" value="打    印" onclick="doPrint('打印预览')" />
	<input id="btnSubmit" class="btn" type="button" value="返    回" onclick="history.go(-1)"/>
</body>
</html>