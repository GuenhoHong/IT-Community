package com.pj.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

//세션에 저장될 클래스이다 
@Data
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class UserVO {
	
	private String userId;
	private String userPw;
	private String name;
	private String phoneNum;
	private String email;
	private Date join_Date;
	private int auth;
	private String sessionId;
	private String sessionKey;

	
	

}
