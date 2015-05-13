<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<nav class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand" href="${ pageContext.request.contextPath }/index.jsp">不鸟你笔记本</a>
		</div>
		<div class="collapse navbar-collapse"
			id="bs-example-navbar-collapse-1">
			<ul class="nav navbar-nav">
				<li class="active"><a href="#">我的笔记 <span class="sr-only">(current)</span></a></li>
				<li><a href="#">我的游记</a></li>
				<li><a href="#">我的图册</a></li>
				<li><a href="">个人资料</a></li>
			</ul>
			<form class="navbar-form navbar-right" role="search">
				<div class="form-group">
					<input type="text" class="form-control" placeholder="请输入关键词">
				</div>
				<button type="submit" class="btn btn-default">搜索</button>
			</form>
		</div>
	</div>
</nav>