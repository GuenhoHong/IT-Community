package com.pj.service;

import java.sql.Date;

import com.pj.dto.LoginDTO;
import com.pj.vo.UserVO;

public interface UserService {
	
	public UserVO login(LoginDTO loginDTO);
	
	public void insert(UserVO userVO);
	
	public void keepLogin(String userId, String sessionId, Date next);
	
	public UserVO checkLoginBefore(String value);
	
	
}
