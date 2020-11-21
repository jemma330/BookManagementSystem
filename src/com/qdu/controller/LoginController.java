package com.qdu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.qdu.bean.Admin;
import com.qdu.bean.User;
import com.qdu.service.UserService;

@Controller
public class LoginController {
	
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/register.do", method = RequestMethod.POST)
	public ModelAndView userRegister(User user) {
		ModelAndView mav = new ModelAndView();
		List<User> commonNameList = userService.checkNameCommon(user);
		if(commonNameList.size() == 1) {
			mav.setViewName("error");
			mav.addObject("errorMessage", "用户名重复！!");
			return mav;
		}
		userService.userRegister(user);
		mav.setViewName("register_success");
		return mav;
	}
	
	@RequestMapping(value = "/userLogin.do", method = RequestMethod.POST)
	public ModelAndView userLogin(User user, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView();
		List<User> list = userService.checkUserLogin(user);
		if(list.size() == 1) {
			mav.setViewName("home");
			mav.addObject("username", user.getUsername());
			HttpSession session = request.getSession();
			session.setAttribute("username", user.getUsername());
			return mav;
		}
		mav.setViewName("error");
		mav.addObject("errorMessage", "用户名或者密码错误！");
		return mav;
	}
	
	@RequestMapping(value = "/adminLogin.do", method = RequestMethod.POST)
	public ModelAndView adminLogin(Admin admin) {
		ModelAndView mav = new ModelAndView();
		List<Admin> list = userService.checkAdminLogin(admin);
		if(list.size() == 1) {
			mav.setViewName("success");
			return mav;
		}
		mav.setViewName("error");
		mav.addObject("errorMessage", "用户名或者密码错误！");
		return mav;
	}
}
