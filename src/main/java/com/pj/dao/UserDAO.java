package com.pj.dao;

import java.sql.Date;
import com.pj.dto.LoginDTO;
import com.pj.vo.UserVO;


public interface UserDAO {
	
	public UserVO login(LoginDTO loginDTO);
	
	public void insert(UserVO userVO);
	
	public void keepLogin(String userId, String sesionId, Date next);
	
	public UserVO checkUserWithSessionKey(String value);
	

}
