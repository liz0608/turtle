package com.turtle.www.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.turtle.www.domain.User;
import com.turtle.www.service.IUserService;

@Controller
public class UserController {
	private IUserService userService;

	public IUserService getUserService() {
		return userService;
	}

	public void setUserService(IUserService userService) {
		this.userService = userService;
	}

	@RequestMapping("/user/login.do")
	protected @ResponseBody Map<String, Object> login(
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		response.setCharacterEncoding("utf-8");
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		User user = new User();
		user.setUsername(username);
		user = userService.getUserByName(user);
		HttpSession session = request.getSession();
		Cookie usernameCookie = new Cookie("username", user.getUsername());
		usernameCookie.setMaxAge(1000000);
		response.addCookie(usernameCookie);
		Cookie passwordCookie = new Cookie("password", user.getPassword());
		passwordCookie.setMaxAge(1000000);
		response.addCookie(passwordCookie);
		Map<String, Object> result = new HashMap<String, Object>();

		if (user != null && user.getPassword() != null
				&& user.getPassword().equals(password)) {
			session.setAttribute("user", user);
			result.put("result", true);
		} else {
			result.put("result", false);
		}
		return result;
	}
	
	@RequestMapping("/user/logout.do")
	protected ModelAndView logout(
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();	
		session.removeAttribute("user");
		ModelAndView mav = new ModelAndView("redirect:/index.jsp");
		return mav;
	}

	@RequestMapping("/user/register.do")
	protected ModelAndView register(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		String username = request.getParameter("username");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		int age = Integer.valueOf(request.getParameter("age"));
		String phone = request.getParameter("phone");
		String email = request.getParameter("email");
		String description = request.getParameter("description");

		User user = new User();
		user.setUsername(username);
		user.setPassword(password);
		user.setGender(gender);
		user.setAge(age);
		user.setPhone(phone);
		user.setEmail(email);
		user.setDescription(description);
		user.setRegister(new Date());
		user.setLast(new Date());

		ModelAndView mav = new ModelAndView("success");

		userService.insertUser(user);
		return mav;
	}
	
	@RequestMapping("/user/detail.jsp")
	protected ModelAndView UserDetail(
			HttpServletRequest request, HttpServletResponse response)
			throws Exception {
		HttpSession session = request.getSession();	
		User user = (User)session.getAttribute("user");
		ModelAndView mav = new ModelAndView("/user/detail");
		mav.addObject("user2", user);
		return mav;
	}
}
