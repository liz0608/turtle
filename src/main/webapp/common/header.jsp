<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="com.turtle.www.domain.User"%>
<header>
	<img id="header_image"
		src="${ pageContext.request.contextPath}/images/header_image.png">
	<div id="header_title">
		<div style="float: lfet">
			<label id="header_label">不鸟你笔记本</label>
		</div>
		<div style="float: right">
			<span class="navbar-right"> <a class=""
				href="${ pageContext.request.contextPath}/user/register.jsp">注册</a>
				<%
					User user = (User) session.getAttribute("user");
					if (user == null) {
				%> <a class=""
				href="${ pageContext.request.contextPath}/user/login.jsp">登录</a> <%
 	} else {
 %> <a class=""
				href="${ pageContext.request.contextPath}/user/logout.do">注销</a> <%
 	}
 %>
			</span>
		</div>
	</div>
</header>