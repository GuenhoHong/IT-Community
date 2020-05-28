package com.pj.vo;

import java.sql.Date;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor

public class QnaBoardVO {

	private int no;

	private String title;

	private String writer;

	private String content;

	private Date regDate;

	private int hit;
	
	//게시글 답글 처리
	private int originNo;
	
	private int groupOrd;
	
	private int groupLayer;


}
