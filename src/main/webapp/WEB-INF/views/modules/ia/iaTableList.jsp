<%@ page contentType="text/html;charset=UTF-8" %>
<%@ include file="/WEB-INF/views/include/taglib.jsp"%>
<html>
<head>
	<title>目录管理</title>
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
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a href="${ctx}/ia/iaTable/">目录列表</a></li>
		<shiro:hasPermission name="ia:iaTable:edit"><li><a href="${ctx}/ia/iaTable/form">目录添加</a></li></shiro:hasPermission>
	</ul>
	<%-- <form:form id="searchForm" modelAttribute="iaTable" action="${ctx}/ia/iaTable/" method="post" class="breadcrumb form-search">
		<input id="pageNo" name="pageNo" type="hidden" value="${page.pageNo}"/>
		<input id="pageSize" name="pageSize" type="hidden" value="${page.pageSize}"/>
		<ul class="ul-form">
			<li class="btns"><input id="btnSubmit" class="btn btn-primary" type="submit" value="查询"/></li>
			<li class="clearfix"></li>
		</ul>
	</form:form> --%>
	<sys:message content="${message}"/>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th>表名</th>
				<th>排序</th>
				<shiro:hasPermission name="ia:iaTable:edit"><th>操作</th></shiro:hasPermission>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${page.list}" var="iaTable">
			<tr>
				<td><a href="${ctx}/ia/iaTable/form?id=${iaTable.id}">
					${iaTable.tableName}
				</a></td>
				<td>
					${iaTable.num}
				</td>
				<shiro:hasPermission name="ia:iaTable:edit"><td>
    				<a href="${ctx}/ia/iaTable/form?id=${iaTable.id}">修改</a>
					<a href="${ctx}/ia/iaTable/delete?id=${iaTable.id}" onclick="return confirmx('确认要删除该目录吗？', this.href)">删除</a>
				</td></shiro:hasPermission>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<div class="pagination">${page}</div>
</body>
</html>