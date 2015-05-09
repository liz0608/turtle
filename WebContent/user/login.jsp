<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>登录页面</title>
<script src="${pageContext.request.contextPath}/js/jquery-1.11.0.min.js"></script>
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap.min.css">
<link rel="stylesheet"
	href="${pageContext.request.contextPath}/css/bootstrap-theme.min.css">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="${ pageContext.request.contextPath}/css/main.css" />
</head>
<body>
	<%@ include file="/common/header.jsp"%>
	<div class="clear"></div>
	<%@ include file="/common/nav.jsp"%>
	<div class="clear"></div>
	<div id="container">
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">用户登录</h3>
			</div>
			<div class="panel-body">
				<form id="log_form" role="form" class="form-horizontal"
					autocomplete="off">
					<div class="form-group">
						<label class="col-lg-1 control-label" for="username">姓名</label>
						<div class="col-lg-3">
							<input class="form-control" name="username" type="text"
								id="username" placeholder="请输入用户名" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-1 control-label" for="password">密码</label>
						<div class="col-lg-3">
							<input class="form-control" name="password" type="password"
								id="password" placeholder="请输入密码" />
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-1 col-lg-2">
							<button id="submit" class="btn btn-primary btn-sm">提交</button>
							<button type="reset" class="btn btn-primary btn-sm">重置</button>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-1 col-lg-2">
							<span id="msg" class="label label-info"></span>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">
	$(document).ready(function() {
		$("#submit").click(function() {
			$.ajax({
				cache : false,
				type : "POST",
				url : "login.do",
				data : $("#log_form").serialize(),
				async : false,
				success : function(data) {
					if (data.result == true) {
						location.href = "/turtle/success.jsp";
					} else {
						$("#msg").text("用户名或密码错误，请重新输入！");
					}
				}
			});
			return false;
		});
	});
</script>
</html>