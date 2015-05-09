<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录成功页面</title>
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
		<h1>${user.username}</h1>
	</div>
	<%@ include file="/common/footer.jsp"%>
</body>
</html>