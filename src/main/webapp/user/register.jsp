<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册页面</title>
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
		<div class="panel panel-primary">
			<div class="panel-heading">
				<h3 class="panel-title">用户注册</h3>
			</div>
			<div class="panel-body">
				<form id="reg_form" role="form" class="form-horizontal"
					action="register.do" method="post">
					<div class="form-group">
						<label class="col-lg-1 control-label" for="username">姓名</label>
						<div class="col-lg-3">
							<input class="form-control" name="username" type="text"
								id="username" placeholder="请输入用户名" value="" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-1 control-label" for="password">密码</label>
						<div class="col-lg-3">
							<input class="form-control" name="password" type="password"
								id="password" placeholder="请输入密码" value="" />
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-lg-1">性别</label>
						<div class="col-lg-3">
							<label class="radio-inline"> <input type="radio"
								name="gender" value="男" /> 男
							</label> <label class="radio-inline"> <input type="radio"
								name="gender" value="女" /> 女
							</label>
						</div>
					</div>
					<div class="form-group">
						<label class="control-label col-lg-1" for="age">年龄</label>
						<div class="col-lg-3">
							<select name="age" class="form-control">
								<option value="1">1</option>
								<option value="2">2</option>
								<option value="3">3</option>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-1 control-label" for="phone">电话</label>
						<div class="col-lg-3">
							<input class="form-control" name="phone" type="text" id="phone"
								placeholder="请输入电话" value="" />
						</div>
					</div>
					<div class="form-group">
						<label class="col-lg-1 control-label" for="email">邮箱</label>
						<div class="col-lg-3">
							<input class="form-control" name="email" type="text" id="email"
								placeholder="请输入邮箱" value="" />
						</div>
					</div>
					<div class="form-group">
						<label for="intro" class="control-label col-lg-1">描述</label>
						<div class="col-lg-3">
							<textarea id="description" class="form-control" rows="3"
								name="description" placeholder="请填写描述"></textarea>
						</div>
					</div>
					<div class="form-group">
						<div class="col-lg-offset-1 col-lg-2">
							<button type="submit" class="btn btn-primary btn-sm">提交</button>
							<button type="reset" class="btn btn-primary btn-sm">重置</button>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>