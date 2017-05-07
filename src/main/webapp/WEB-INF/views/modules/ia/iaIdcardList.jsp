<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>ycia管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			
		});
		function page(n,s){
			$("#pageNo").val(n);
			$("#pageSize").val(s);
			$("#searchForm").submit();
        	return false;
        }
		
		function readCard(){
			window.location = '${ctx}/ia/iaIdcard/cardReading';
			//判断是否选中节点
			//var officeId = $("#officeId").val();
			//if(officeId == "" || officeId == undefined || officeId == null){
			//	alert("请选择机构节点");
			//}else{
			//	window.location = '${ctx}/ia/iaIdcard/cardReading?officeId='+officeId;
			//}
		}
		
		function ClearForm() {
            document.all['name'].value = "";
            document.all['cardNo'].value = "";
            return true;
		}
		function Button1_onclick() {
         	var CVR_IDCard = document.getElementById("CVR_IDCard");					
			var strReadResult = CVR_IDCard.ReadCard();
			if(strReadResult == "0"){
				ClearForm();
				document.all['name'].value = CVR_IDCard.Name;  
               	document.all['cardNo'].value = CVR_IDCard.CardNo; 
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
		<li class="active"><a>用户列表</a></li>
		<%-- <shiro:hasPermission name="ia:iaIdcard:edit"><li><a href="${ctx}/ia/iaIdcard/form">用户添加</a></li></shiro:hasPermission> --%>
	</ul>
	<%-- <form:form id="searchForm" modelAttribute="iaIdcard" action="${ctx}/ia/iaIdcard/" method="post" class="breadcrumb form-search"> --%>
	<form id="inputForm" class="breadcrumb form-search" action="${ctx}/ia/iaIdcard/" method="post" novalidate="novalidate" runat="server">
		<OBJECT classid="clsid:10946843-7507-44FE-ACE8-2B3483D179B7"
			  id="CVR_IDCard" name="CVR_IDCard" width="0" height="0" >
		</OBJECT>
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<input id="officeId" type="hidden" value="${officeId }"/>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-danger" type="button" value="建     档" onclick="readCard();" /></li>
			<li><label>姓名：</label>
				<input id="name" name="name" type="text" value="" maxlength="50">
				<%-- <form:input path="name" htmlEscape="false" maxlength="100" class="input-medium"/> --%>
			</li>
			<li><label>身份证号码：</label>
				<input id="cardNo" name="cardNo" type="text" value="" maxlength="50">
				<%-- <form:input path="cardNo" htmlEscape="false" maxlength="50" class="input-medium"/> --%>
			</li>
			<li class="btns"><input id="btnSubmit" class="btn btn-danger" type="button" value="点 击 读 卡" onclick="return Button1_onclick();" /></li>
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查    询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form>
	<%-- </form:form> --%>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<!-- <th>机构名称</th> -->
				<th>姓名</th>
				<th>性别</th>
				<th>民族</th>
				<th>出生年月</th>
				<th>户籍住址</th>
				<th>身份证号码</th>
				<th>签发机关</th>
				<th>有效开始日期</th>
				<th>有效截止日期</th>
				<th>建档日期</th>
				<shiro:hasPermission name="ia:iaIdcard:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="iaIdcard">
			<tr>
				<%-- <td>
					${iaIdcard.officeName}
				</td> --%>
				<td>
				<%-- <a href="${ctx}/ia/iaIdcard/form?id=${iaIdcard.id}">
					${iaIdcard.name}
				</a> --%>
					${iaIdcard.name}
				</td>
				<td>
					${iaIdcard.sex}
				</td>
				<td>
					${iaIdcard.nation}
				</td>
				<td>
					${iaIdcard.birth}
				</td>
				<td>
					${iaIdcard.address}
				</td>
				<td>
					${iaIdcard.cardNo}
				</td>
				<td>
					${iaIdcard.idIssued}
				</td>
				<td>
					${iaIdcard.effectedDate}
				</td>
				<td>
					${iaIdcard.expiredDate}
				</td>
				<td>
					<fmt:formatDate value="${iaIdcard.createDate}" pattern="yyyy-MM-dd HH:mm:ss"/>
				</td>
				<shiro:hasPermission name="ia:iaIdcard:edit"><td>
					<a href="${ctx}/ia/iaIdcard/iaTableList?id=${iaIdcard.id}">业务详情</a>
    				<%-- <a href="${ctx}/ia/iaIdcard/form?id=${iaIdcard.id}">修改</a> --%>
					<%-- <a href="${ctx}/ia/iaIdcard/delete?id=${iaIdcard.id}" onclick="return confirmx('确认要删除该用户吗？', this.href)">删除</a> --%>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>