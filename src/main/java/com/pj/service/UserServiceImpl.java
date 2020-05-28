package com.pj.service;

import java.sql.Date;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.pj.dao.UserDAO;
import com.pj.dto.LoginDTO;
import com.pj.vo.UserVO;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class UserServiceImpl implements UserService {
	
	@Inject
	private UserDAO userDAO;
	
	@Override
	public UserVO login(LoginDTO loginDTO) {
		log.info(loginDTO);
		log.info(userDAO.login(loginDTO));
		return userDAO.login(loginDTO);
	}
	
	@Override
	public void insert(UserVO userVO){
		userDAO.insert(userVO);
	}
	
	@Override
	public void keepLogin(String userId, String sessionId, Date next) {
		userDAO.keepLogin(userId, sessionId, next);
	}
	
	@Override
	public UserVO checkLoginBefore(String value) {
		return userDAO.checkUserWithSessionKey(value);
	}
	
}	
