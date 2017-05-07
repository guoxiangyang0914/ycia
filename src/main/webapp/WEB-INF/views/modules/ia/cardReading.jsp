<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>ycia管理</title>
	<meta name="decorator" content="default"/>
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
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
		function idCardList(){
			window.location = '${ctx}/ia/iaIdcard';
		}
		
		function ClearForm() {
            document.all['name'].value = ""; 
            document.all['sex'].value = ""; 
            document.all['nation'].value = ""; 
            document.all['birth'].value = ""; 
            document.all['address'].value = ""; 
            document.all['cardNo'].value = ""; 
            document.all['idIssued'].value = ""; 
            document.all['effectedDate'].value = ""; 
            document.all['expiredDate'].value = ""; 
            //document.all['SAMID'].value = ""; 
            //document.all['pic'].src = ""; 
            document.all['picture'].value = "";  
            //document.all['PictureLen'].value = "";     
            return true;
		}
		function Button1_onclick() {
         	var CVR_IDCard = document.getElementById("CVR_IDCard");					
			var strReadResult = CVR_IDCard.ReadCard();
			if(strReadResult == "0"){
				ClearForm();
				document.all['name'].value = CVR_IDCard.Name;  
               	document.all['sex'].value = CVR_IDCard.Sex;    
               	document.all['nation'].value = CVR_IDCard.Nation; 
               	//document.all['birth'].value = CVR_IDCard.Born;     
               	var birth = CVR_IDCard.Born;
               	document.all['birth'].value = birth.substring(0,4)+'-'+birth.substring(5,birth.indexOf('月'))+'-'+birth.substring(8,birth.indexOf('日')); 
               	document.all['address'].value = CVR_IDCard.Address; 
               	document.all['cardNo'].value = CVR_IDCard.CardNo; 
               	document.all['idIssued'].value = CVR_IDCard.IssuedAt;  
               	document.all['effectedDate'].value = CVR_IDCard.EffectedDate;  
               	document.all['expiredDate'].value = CVR_IDCard.ExpiredDate;
               	//document.all['SAMID'].value = CVR_IDCard.SAMID;
               	//document.all['pic'].src = CVR_IDCard.Pic;
               	document.all['picture'].value = CVR_IDCard.Picture;  
               	//document.all['PictureLen'].value = CVR_IDCard.PictureLen  
           }
           else{
             ClearForm();
             alert(strReadResult);
           }
		}
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a>读卡</a></li>
	</ul>
	<form id="inputForm" class="form-horizontal" action="${ctx}/ia/iaIdcard/save" method="post" novalidate="novalidate" runat="server">
<%-- 	<form:form id="inputForm" modelAttribute="iaIdcard" action="${ctx}/ia/iaIdcard/save" method="post" class="form-horizontal"> --%>
<%-- 		<form:hidden path="id"/> --%>
		<OBJECT classid="clsid:10946843-7507-44FE-ACE8-2B3483D179B7"
			  id="CVR_IDCard" name="CVR_IDCard" width="0" height="0" >
		</OBJECT>
		<input id="id" name="id" type="hidden" value="">
		<sys:message content="${message}"/>
		<div class="control-group">
			<label class="control-label">
				<input id="btnSubmit" class="btn btn-danger" type="button" value="开 始 读 卡" onclick="return Button1_onclick();"/>
			</label>
			<div class="controls" style="margin-top:7px;font-weight: bold;">
				<span class="help-inline"><font color="red" size="4px;">*请将身份证放在读卡器上点击开始读卡按钮</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">姓名:</label>
			<div class="controls">
				<input id="officeId" name="officeId" type="hidden" value="${officeId }"/>
				<input id="name" name="name" class="required error" type="text" value="" maxlength="50">
<%-- 				<form:input path="name" htmlEscape="false" maxlength="50" class="required"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">性别:</label>
			<div class="controls">
				<input id="sex" name="sex" class="required input-small" type="text" value="" maxlength="50">
<%-- 				<form:input path="sex" htmlEscape="false" maxlength="50" class="required input-small"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">民族:</label>
			<div class="controls">
				<input id="nation" name="nation" class="required input-small" type="text" value="" maxlength="50">
<%-- 				<form:input path="nation" htmlEscape="false" maxlength="50" class="required input-small"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">出生日期:</label>
			<div class="controls">
				<input id="birth" name="birth" class="required" type="text" value="" maxlength="50">
<%-- 				<form:input path="birth" htmlEscape="false" maxlength="50" class="required"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">地址:</label>
			<div class="controls">
				<input id="address" name="address" class="required input-xxlarge error" type="text" value="" maxlength="500">
<%-- 				<form:input path="address" htmlEscape="false" maxlength="500" class="required input-xxlarge"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label">身份证号码:</label>
			<div class="controls">
				<input id="cardNo" name="cardNo" class="required error" type="text" value="" maxlength="50">
<%-- 				<form:input path="cardNo" htmlEscape="false" maxlength="50" class="required"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>	
		<div class="control-group">
			<label class="control-label">签发机关:</label>
			<div class="controls">
				<input id="idIssued" name="idIssued" class="required error" type="text" value="" maxlength="50">
<%-- 				<form:input path="idIssued" htmlEscape="false" maxlength="50" class="required"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>	
		<div class="control-group">
			<label class="control-label">有效期限:</label>
			<div class="controls">
				<input id="effectedDate" name="effectedDate" class="required input-small error" type="text" value="" maxlength="50">
<%-- 				<form:input path="effectedDate" htmlEscape="false" maxlength="50" class="required input-small"/> --%>
				至
				<input id="expiredDate" name="expiredDate" class="required input-small error" type="text" value="" maxlength="50">
<%-- 				<form:input path="expiredDate" htmlEscape="false" maxlength="50" class="required input-small"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>	
		<div class="control-group">
			<label class="control-label">照片编码:</label>
			<div class="controls">
				<textarea id="picture" name="picture" maxlength="5000" class="required input-xxlarge error" rows="3"></textarea>
<%-- 				<form:textarea path="picture" htmlEscape="false" rows="3" maxlength="500" class="required input-xxlarge"/> --%>
				<span class="help-inline"><font color="red">*</font> </span>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"></label>
			<div class="controls">
				<input id="btnSubmit" class="btn btn-danger" type="submit" value="建    档"/>
				<input id="btnSubmit" class="btn" type="button" value="返    回" onclick="idCardList();"/>
			</div>
		</div>
		<div class="control-group">
			<label class="control-label"></label>
		</div>
	</form>
<%-- 	</form:form> --%>

</body>
</html>