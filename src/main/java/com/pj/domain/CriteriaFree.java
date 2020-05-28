package com.pj.domain;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class CriteriaFree {
	
	private int pageNum; // 페이지 번호
	private int amount; // 한 페이지당 보여지는 Data
	private String freeType;
	private String freeKeyWord;
	
	public CriteriaFree() {
		this(1,10);
	}
	
	public CriteriaFree(int pageNum,int amount) {
		this.pageNum = pageNum;
		this.amount = amount;
	}
	
	public String[] getFreeTypeArr() {
		return freeType == null ? new String[] {}: freeType.split("");
	}  // 검색 조건을 배열로 만들어 한꺼번에 처리한다
	

}
