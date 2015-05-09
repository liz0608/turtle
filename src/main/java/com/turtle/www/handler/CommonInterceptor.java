package com.turtle.www.handler;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.turtle.www.domain.User;

public class CommonInterceptor implements HandlerInterceptor {

	private String[] urlIgnores;

	public CommonInterceptor() {
	}
	
	public void setUrlIgnores(String[] urlIgnores) {
		this.urlIgnores = urlIgnores;
	}

	@Override
	public boolean preHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler) throws Exception {
		String url = request.getRequestURL().toString();
		for (String urlIgnore : urlIgnores) {
			if (url.contains(urlIgnore)) {
				return true;
			}
		}

		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("user");
		if (user != null) {
			return true;
		}
		
		return false;
	}

	@Override
	public void postHandle(HttpServletRequest request,
			HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		response.sendRedirect("/user/login.jsp");
	}

	@Override
	public void afterCompletion(HttpServletRequest request,
			HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
	}

}
