<%@ page contentType="text/html;charset=UTF-8"%>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=UTF-8" />
<link href="${ctxStatic }/iacss/print.css?v=<%=System.currentTimeMillis() %>" rel="stylesheet" />
<style type="text/css">
.borderBot1{font-size:18px;}
</style>
<script type="text/javascript" src="${ctxStatic }/iajs/common.js" />
<script type="text/javascript">
	$(document).ready(function() {
		$("#inputForm").validate({
			submitHandler: function(form){
				loading('正在提交，请稍等...');
				form.submit();
			},
			errorContainer: "#messageBox",
			errorPlacement: function(error, element) {
				$("#messageBox").text("输入有误，请先更正。");
				if (element.is(":checkbox")||element.is(":radio")||element.parent().is(".input-append")){
					error.appendTo(element.parent().parent());
				} else {
					error.insertAfter(element);
				}
			}
		});
		
		
		
	});
	//禁止后退键 作用于Firefox、Opera   
	document.onkeypress = banBackSpace;
	//禁止后退键 作用于IE、Chrome   
	document.onkeydown = banBackSpace;
</script>
<title>个人基本信息表</title>
</head>
<body>
<form:form id="inputForm" modelAttribute="iaHealthArchive" action="${ctx}/ia/iaHealthArchive/saveHealthArchive" method="post" class="form-horizontal" onsubmit="return check();">
	<form:hidden path="id"/>
	<sys:message content="${message}"/>
	<div id="page1">
		<div style="height:100px;"></div>
		<div class="div700">
			<table width="649" border="0" cellpadding="0" cellspacing="0" style="font-size:16px;">
				<tbody>
					<tr>
						<td align="right"><strong>编号</strong> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 0, 1)}" readonly="readonly"/> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 1, 2)}" readonly="readonly"/> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 2, 3)}" readonly="readonly"/> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 3, 4)}" readonly="readonly"/> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 4, 5)}" readonly="readonly"/> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 5, 6)}" readonly="readonly"/> - 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 6, 7)}" readonly="readonly"/> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 7, 8)}" readonly="readonly"/> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 8, 9)}" readonly="readonly"/> - 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 9, 10)}" /> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 10, 11)}" /> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 11, 12)}" /> - 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 12, 13)}" /> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 13, 14)}" /> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 14, 15)}" /> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 15, 16)}" /> 
						<input type="text" name="no" id="no" class="txt" size="1" maxlength="1" value="${fn:substring(iaHealthArchive.no, 16, 17)}" /></td>
					</tr>
				</tbody>
			</table>
			<table width="478" border="0" cellspacing="0" style="margin:0 auto; font-size:16px;">
				<tbody>
					<tr>
						<td height="130">&nbsp;</td>
					</tr>
					<tr>
						<td height="50" align="center"><font style="font-size:36px;"><strong>居 民 健 康 档 案</strong></font></td>
						<input type="hidden" name="icId" id="icId" value="${iaHealthArchive.icId }"></td>
					</tr>
					<tr>
						<td height="100">&nbsp;</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">姓&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;名：</span>
						<input type="text" name="name" id="name" value="${iaHealthArchive.name }" class="borderBot1 fleft width376" readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">现 住 址：</span>
						<input type="text" name="curAddress" id="curAddress" value="${iaHealthArchive.curAddress }" class="borderBot1 fleft width376" />
						</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">户籍地址：</span>
							<input type="text" name="address" id="address" value="${iaHealthArchive.address }" class="borderBot1 fleft width376" readonly="readonly"/>
						</td>
					</tr>
					<%-- <tr>
						<td align="center" height="40">
						<span class="fleft width70">&nbsp;</span>
						<c:choose>
							<c:when test="${fn:length(iaHealthArchive.address) > 20 }">
								<input type="text" name="address" id="address" value="${fn:substring(iaHealthArchive.address, 20,100)}" style="text-align:right;" class="borderBot1 fleft width376" readonly="readonly"/>
							</c:when>
							<c:otherwise>
								<input type="text" name="address" id="address" value="" style="text-align:right;" class="borderBot1 fleft width376" readonly="readonly"/>
							</c:otherwise>
						</c:choose>
						</td>
					</tr> --%>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">联系电话：</span>
						<input type="text" name="tel" id="tel" value="${iaHealthArchive.tel }" class="borderBot1 fleft width376" />
						</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="width116 fleft">乡镇（街道）名称：</span> 
						<input type="text" name="town" id="town" value="${iaHealthArchive.town }" class="borderBot1 fleft width320" />
						</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="width116 fleft">村（居）委会名称：</span>  
						<input type="text" name="committee" id="committee" value="${iaHealthArchive.committee }" class="borderBot1 fleft width320" />
						</td>
					</tr>
				</tbody>
			</table>

			<table width="326" border="0" cellspacing="0" style="margin:0 auto; font-size:16px;">
				<tbody>
					<tr>
						<td height="80">&nbsp;</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">建档单位：</span>
					 		<input type="text" name="buildUnit" id="buildUnit" value="${iaHealthArchive.buildUnit }" class="borderBot1 fleft width280" readonly="readonly"/>
						</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">建 档 人：</span>
					 		<input type="text" name="buildBy" id="buildBy" value="${iaHealthArchive.buildBy }" class="borderBot1 fleft width280"/>
						</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">责任医生：</span> 
							<input type="text" name="doctor" id="doctor" value="${iaHealthArchive.doctor }" class="borderBot1 fleft width280" />
						</td>
					</tr>
					<tr>
						<td align="center" height="40">
						<span class="fleft width70">建档日期：</span>
						<span class="fleft" style="width:220px; text-align:left;"> 
							<input type="text" name="buildYear" id="buildYear" value="${iaHealthArchive.buildYear }" class="borderBot1" style="width:66px" readonly="readonly"/> 年
							<input type="text" name="buildMonth" id="buildMonth" value="${iaHealthArchive.buildMonth }" class="borderBot1" style="width:30px" readonly="readonly"/> 月
							<input type="text" name="buildDay" id="buildDay" value="${iaHealthArchive.buildDay }" class="borderBot1" style="width:30px" readonly="readonly"/> 日
						</span>
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
	<input id="btnSubmit" class="btn btn-primary" style="margin-left:20px;" type="submit" value="保    存"/>
	<input id="btnSubmit" class="btn" type="button" value="返    回" onclick="history.go(-1)" />
</form:form>
<script type="text/javascript">
	function check(){
		var no = document.getElementsByName("no");
		for(var i=0;i<no.length;i++){
			if (no[i].value =="" || no[i].value==""){
				alert("请将编号补充完整！");
				return false;
			}
		}
		return true;
	}
</script>
</body>
</html>