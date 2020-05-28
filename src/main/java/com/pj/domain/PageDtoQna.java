package com.pj.domain;

import lombok.Getter;
import lombok.ToString;

@Getter
@ToString
public class PageDtoQna {
	
	private int startPage;
	private int endPage;
	private boolean prev, next;
	private int total;
	private CriteriaQna qnaCri;
	
	public PageDtoQna(CriteriaQna qnaCri, int total) {
		this.qnaCri = qnaCri;
		this.total = total;
		
		this.endPage = (int)(Math.ceil(qnaCri.getPageNum()/10.0))*10;
		
		this.startPage = this.endPage - 9;
		
		int realEnd = (int)(Math.ceil((total*1.0)/ qnaCri.getAmount()));
		
		if(realEnd < this.endPage) {
			this.endPage = realEnd;
		}
		
		this.prev = this.startPage > 1;
		this.next = this.endPage < realEnd;
		
	}
	
}
