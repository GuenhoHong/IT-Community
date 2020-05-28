package com.pj.vo;

import java.util.Date;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
public class qnaReplyVO {
	
	private int rno; // 댓글번호
	private long bno; // 게시글번호
	private String content; //내용
	private String writer; //작성자
	private Date replyDate; //작성일
	
	
}
