<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${pageContext.request.contextPath}/css/main.css" />
</head>
<body>
	<%@ include file="/common/header.jsp"%>
	<div class="clear"></div>
	<%@ include file="/common/nav.jsp"%>
	<div class="clear"></div>
	<div id="container">
		<div class="panel panel-default">
			<!-- Default panel contents -->
			<div class="panel-heading">Panel heading</div>
			<div class="panel-body">
				<p>个人详细资料</p>
			</div>
			${user2.username}
			<!-- Table -->
			<table class="table">
				<tr>
					<td><input type="text" name="username"
						value="${user.username}" /></td>
					<td><input type="text" name="username2"
						value="${user2.username}" /></td>
				</tr>
			</table>
		</div>
	</div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>