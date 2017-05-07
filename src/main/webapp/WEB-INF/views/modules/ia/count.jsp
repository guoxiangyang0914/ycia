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
	</script>
</head>
<body>
	<ul class="nav nav-tabs">
		<li class="active"><a>用户统计</a></li>
	</ul>
	<table id="contentTable" class="table table-striped table-bordered table-condensed">
		<thead>
			<tr>
				<th width="200px;">单位名称</th>
				<th>用户数量</th>
				<th>居民健康档案封面</th>
				<th>个人基本信息表</th>
				<th>健康体检表</th>
				<th>高血压患者随访服务记录表</th>
				<th>2型糖尿病患者随访服务记录表</th>
				<th>重性精神疾病患者个人信息补充表</th>
				<th>重性精神疾病患者随访服务记录表</th>
			</tr>
		</thead>
		<tbody>
		<c:forEach items="${userCount}" var="iaIdcard">
			<tr>
				<td>
					${iaIdcard.officeName}
				</td>
				<td>
					${iaIdcard.count}
				</td>
				<td>
					${iaIdcard.archiveCount }
				</td>
				<td>
					${iaIdcard.baseCount }
				</td>
				<td>
					${iaIdcard.checkCount }
				</td>
				<td>
					${iaIdcard.hypertensionCount }
				</td>
				<td>
					${iaIdcard.diabetesCount }
				</td>
				<td>
					${iaIdcard.diseaseCount }
				</td>
				<td>
					${iaIdcard.mentalFollowCount }
				</td>
			</tr>
		</c:forEach>
		</tbody>
	</table>
	<br>
	<div class="pagination">${page}</div>
	<c:forEach items="${userCount}" var="iaIdcard" begin="0" end="0">
		<font size="5" color="black">
			建档统计：${iaIdcard.total }人
		</font>
	</c:forEach>
</body>
</html>