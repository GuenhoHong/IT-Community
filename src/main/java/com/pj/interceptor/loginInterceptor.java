package com.pj.interceptor;


import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.ui.ModelMap;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;
import lombok.extern.log4j.Log4j;

//loginPost 로 접근하도록 설정하는 것을 목적으로 작성되었다
@Log4j
public class loginInterceptor extends HandlerInterceptorAdapter {
	
	//private static final String LOGIN ="login";
	
	/* 
	 * postHandle = Session에 컨트롤러에서 저장한 user를 저장하고 /로 리다이렉트한다.
	 * preHandle = 기존의 로그인 정보가 있을 경우 초기화하는 역할
	 */
	
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object Handler, ModelAndView modelAndView) throws Exception {
		
		HttpSession session = request.getSession();
		ModelMap modelMap = modelAndView.getModelMap();
		Object userVO = modelMap.get("userVO");
		
		if(userVO != null) {
			log.info("new login");
			session.setAttribute("login", userVO);
			if(request.getParameter("useCookie") != null) {
			log.info("remember me");
			Cookie loginCookie = new Cookie("loginCookie",session.getId());
			loginCookie.setPath("/");
			loginCookie.setMaxAge(60*60*24*7);
			response.addCookie(loginCookie);			
			}
			
			Object dest = session.getAttribute("dest");
			log.info("get Login " + userVO.toString());
			response.sendRedirect(dest != null? (String)dest: "/");
			
		}
		
	}//Controller에서 받아온 userVO를 상태를 체크해 HttpSession에 저장한다
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handelr) throws Exception{
		
		HttpSession session = request.getSession();
	
		if(session.getAttribute("login") != null) {
			log.info("login data before");
			session.removeAttribute("login");
		}
		return true;
	} //기존 HttpSession에 남아있는 정보가 있을경우에 정보를 삭제합니다
	
}
