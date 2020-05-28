package com.pj.dao;

import java.sql.Date;
import java.util.HashMap;
import java.util.Map;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.pj.dto.LoginDTO;
import com.pj.vo.UserVO;

@Repository
public class UserDAOImpl implements UserDAO {
	
	@Inject
	private SqlSession sql;
	
	private String namespace = "com.pj.mapper.userMapper";
	
	@Override
	public UserVO login(LoginDTO loginDTO) {
		return sql.selectOne(namespace+".login",loginDTO);
	}
	
	@Override
	public void insert(UserVO userVO) {
		sql.insert(namespace+".insert",userVO);
	}
	
	@Override
	public void keepLogin(String userId, String sessionId, Date next) {
		Map<String,Object> paramMap = new HashMap<String,Object>();
		paramMap.put("userId",userId);
		paramMap.put("sessionId",sessionId);
		paramMap.put("next",next);
		sql.update(namespace+".keepLogin",paramMap);
	}
	
	@Override
	public UserVO checkUserWithSessionKey(String value) {
		return sql.selectOne(namespace+".checkUserWithSessionKey",value);
	}
	
	
	
	
	
}
