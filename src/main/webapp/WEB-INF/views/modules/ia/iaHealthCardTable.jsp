<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${ctxStatic }/iacss/print.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" />
<script src="${ctxStatic}/jquery/jquery-1.8.3.min.js" type="text/javascript"></script>
<script type="text/javascript">
	$(document).ready(function() {
		
		formatField('${iaHealthCard.birth }',"birth");
		formatField('${iaHealthCard.aobBlood }',"aobBlood");
		formatField('${iaHealthCard.rhBlood }',"rhBlood");
		formatField('${iaHealthCard.chronicDisea }',"chronicDisea");
		
	})
	
	function formatField(data,name){
		var dataV = data.split(",");
		for(var i=0;i<dataV.length;i++){
			$("input[name='"+name+"']:eq("+i+")").val(dataV[i]);
		}
	}
</script>
<title>居民健康档案信息卡</title>
</head>
<body>
	<form:form id="inputForm" modelAttribute="iaHealthCard" action="${ctx}/ia/iaHealthCard/saveHealthCard" method="post" class="form-horizontal">
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
       <p><font class="font18"><strong>居民健康档案信息卡</strong></font> </p> 
       <input type="hidden" name="icId" id="icId" value="${iaHealthCard.icId }">
      
      </div>
	  </td> 
    </tr> 
   </tbody>
  </table> 
  <table width="649" border="1" cellpadding="0" cellspacing="0"> 
   <tbody>
    <tr> 
     <td width="90" height="30" align="center"> 姓名 </td> 
     <td width=""> 
		<input name="name" id="name" value="${iaHealthCard.name }" type="text" class="border0" readonly="readonly"/>
	 </td> 
     <td align="center"> 性别 </td> 
     <td width=""> 
		<input name="sex" id="sex" value="${iaHealthCard.sex }" type="text" class="border0" readonly="readonly"/>
	 </td> 
     <td width="" align="center"> 出生日期${iaHealthCard.birth } </td> 
     <td width="220" align="center"> 
		 <input name="birth" id="birth" value="${fn:substring(iaHealthCard.birth, 0, 4)} " size="4" maxlength="4" type="text" class="border0" style="width:40px" readonly="readonly"/>年
		 <input name="birth" id="birth" value="${fn:substring(iaHealthCard.birth, 5, 7)} " size="2" maxlength="2" type="text" class="border0" style="width:20px" readonly="readonly"/>月
		 <input name="birth" id="birth" value="${fn:substring(iaHealthCard.birth, 8, 10)} " size="2" maxlength="2" type="text" class="border0" style="width:20px" readonly="readonly"/>日
	 </td> 
    </tr> 
	<tr>
		<td height="30" colspan="4" align="center">健康档案编号</td>
		<td colspan="2" align="center">
		<input type="hidden" class="txt" size="1" maxlength="1" id="" name="" value="-"/><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="no" name="no" value="${fn:substring(iaHealthCard.no, 9, 10)}" /><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="no" name="no" value="${fn:substring(iaHealthCard.no, 10, 11)}" />
		—
			<input type="text" class="txt" size="1" maxlength="1" id="no" name="no" value="${fn:substring(iaHealthCard.no, 11, 12)}" /><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="no" name="no" value="${fn:substring(iaHealthCard.no, 12, 13)}" /><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="no" name="no" value="${fn:substring(iaHealthCard.no, 13, 14)}" /><input style="margin-left:2px;" type="text" class="txt" size="1" maxlength="1" id="no" name="no" value="${fn:substring(iaHealthCard.no, 14, 15)}" />

		</td>
	</tr>
	<tr>
		<td height="30" align="center">ABO血型</td>
		<td colspan="3" align="center">
			<input name="aobBlood" id="aobBlood" value="${iaHealthCard.aobBlood }" type="text" class="txt" size="1" maxlength="1" /> A
			&nbsp;
			<input name="aobBlood" id="aobBlood" value="${iaHealthCard.aobBlood }" type="text" class="txt" size="1" maxlength="1" /> B
			&nbsp;
			<input name="aobBlood" id="aobBlood" value="${iaHealthCard.aobBlood }" type="text" class="txt" size="1" maxlength="1" /> C
			&nbsp;
			<input name="aobBlood" id="aobBlood" value="${iaHealthCard.aobBlood }" type="text" class="txt" size="1" maxlength="1" /> D
		</td>
		<td align="center">
			RH血型
		</td>
		<td align="center">
			<input name="rhBlood" id="rhBlood" value="${iaHealthCard.rhBlood }" type="text" class="txt" size="1" maxlength="1" /> Rh阴性
			<input name="rhBlood" id="rhBlood" value="${iaHealthCard.rhBlood }" type="text" class="txt" size="1" maxlength="1" /> Rh阳性
			<input name="rhBlood" id="rhBlood" value="${iaHealthCard.rhBlood }" type="text" class="txt" size="1" maxlength="1" /> 不详
		</td>
	</tr>
	<tr>
		<td height="80" colspan="6">
			慢性病患病情况：<br />
			<label><input name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }" type="text" class="txt" size="1" maxlength="1" /> Rh阴性</label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }" type="text" class="txt" size="1" maxlength="1" /> 高血压</label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }" type="text" class="txt" size="1" maxlength="1" /> 糖尿病</label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }" type="text" class="txt" size="1" maxlength="1" /> 脑卒中</label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }" type="text" class="txt" size="1" maxlength="1" /> 冠心病</label>
			&nbsp;&nbsp;&nbsp;&nbsp;
			<label><input name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }" type="text" class="txt" size="1" maxlength="1" /> 哮喘</label><br />
			<label><input name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }" type="text" class="txt" size="1" maxlength="1" /> 其他疾病<input type="text" class="borderBot1" size="28" name="chronicDisea" id="chronicDisea" value="${iaHealthCard.chronicDisea }"/></label>
		</td>
	</tr>
	<tr>
		<td height="30" colspan="6">
			<table width="100%" cellpadding="0" cellspacing="0" border="0">
				<tr>
					<td valign="top" width="60">过敏史：</td>
					<td>
						<textarea rows="4" class="txtarea" name="allergyHistory" id="allergyHistory" ></textarea>
					</td>
				</tr>
			</table>
		</td>
	</tr>
   </tbody>
  </table> 
  
  <table width="649" border="0" cellspacing="0"> 
   <tbody>
    <tr>
		<td>
			<div class="explain">
				<strong>填表说明：</strong><br />
				<p class="textindent">
					1.居民健康档案信息卡为正反两面，根据居民信息如实填写，应与健康档案对应项目的填写内容一致。
				</p>
				<p class="textindent">
					2.过敏史：过敏主要指青霉素、磺胺、链霉素过敏，如有其他药物或食物等其他物质（如花粉、酒精、油漆等）过敏，请写明过敏物质名称。
				</p>
			</div>
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