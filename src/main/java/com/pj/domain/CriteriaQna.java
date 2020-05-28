package com.pj.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CriteriaQna {
	
	private int pageNum; // 페이지 번호
	private int amount; // 한 페이지당 보여지는 Data
	private String qnaType;
	private String qnaKeyWord;
	
	public CriteriaQna() {
		this(1,10);
	}
	
	public CriteriaQna(int pageNum,int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getQnaTypeArr() {
		return qnaType == null? new String[] {} : qnaType.split("");
	}
	

}
