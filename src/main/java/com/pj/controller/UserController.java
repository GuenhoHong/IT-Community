package com.pj.controller;

import java.sql.Date;

import javax.inject.Inject;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.util.WebUtils;

import com.pj.dto.LoginDTO;
import com.pj.service.UserService;
import com.pj.vo.UserVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Controller
@RequestMapping("/user")
public class UserController {

	@Inject
	private UserService service;
	
	@GetMapping("/login")
	public void loginGet(@ModelAttribute("dto") LoginDTO loginDTO) {
			
	}
	
	@GetMapping("/register")
	public String register() {
		return "/user/register";
	}
	
	
	@PostMapping("/create")
	public String createUser(UserVO userVO, Model model) {
		service.insert(userVO);
		return "/user/login";
	}
	
	@PostMapping("/loginPost")
	public void loginPost(LoginDTO loginDTO, HttpSession session, Model model) {
		UserVO userVO = service.login(loginDTO);
		log.info(userVO);
		if(userVO == null) {
			return;
		}
		model.addAttribute("userVO", userVO);
		
		if(loginDTO.isUseCookie()) {
			int amount = 60 * 60 * 24* 7;
			Date sessionLimit = new Date(System.currentTimeMillis()+(1000*amount));
			service.keepLogin(userVO.getUserId(),session.getId(),sessionLimit);
		}
		
	}
	
	@GetMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response, HttpSession session) {
		Object obj = session.getAttribute("login");
		if(obj != null) {
			UserVO userVO = (UserVO)obj;
			session.removeAttribute("login");
			session.invalidate();
			
			Cookie loginCookie = WebUtils.getCookie(request, "loginCookie");
			
			if(loginCookie != null) {
				loginCookie.setPath("/");
				loginCookie.setMaxAge(0);
				response.addCookie(loginCookie);
				service.keepLogin(userVO.getUserId(),session.getId(),new Date(0));
			}
	
		}
		return "/user/logout";
	}
	
}
