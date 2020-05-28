package com.pj.vo;

import java.sql.Date;

import lombok.Data;
import lombok.NoArgsConstructor;

//데이터를 VO 클래스에 저장한다
@Data
@NoArgsConstructor
public class BoardVO {
	
	private int NO;
	
	private int MEMBER_ID;
	
	private String TITLE;
	
	private String CONTENT;
	
	private Date REG_DATE;
	
	private int HIT;
	

}
