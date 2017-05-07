<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>ycia管理</title>
	<meta name="decorator" content="default"/>
	<script type="text/javascript">
		$(document).ready(function() {
			closeLoading();
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
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a>目录</a></li>
	</ul>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>居民健康档案表单目录</th>
				<%-- <shiro:hasPermission name="ia:iaTable:edit"><th>操作</th></shiro:hasPermission> --%>
				<th>操作</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="iaTable">
			<tr>
				<td style="width: 400px;">
					<a href="${ctx}${iaTable.tableUrl }?id=${iaIdcard.id}">${iaTable.tableName}</a>
				</td>
				<%-- <shiro:hasPermission name="ia:iaTable:edit"> --%>
				<td>
    				<%-- <a href="${ctx}${iaTable.tableUrl }?id=${iaIdcard.id}">填表</a> --%>
    				<a href="${ctx}${iaTable.tableUrl}Print?id=${iaIdcard.id}">打印</a>
				</td>
				<%-- </shiro:hasPermission> --%>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
	<input id="btnSubmit" class="btn btn-primary" type="button" value="返    回" onclick="idCardList();"/>
</body>
</html>