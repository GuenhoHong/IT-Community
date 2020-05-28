package com.pj.service;

import java.util.List;


import com.pj.domain.CriteriaQna;
import com.pj.vo.qnaReplyVO;

public interface qnaReplyService {
	
	public void addReply(qnaReplyVO qnaReplyVO);
	
	public void removeReply(int bno);
	
	public void modifyReply(qnaReplyVO qnaReplyVO);
	
	public List<qnaReplyVO> listReply(long bno);
	
	public List<qnaReplyVO> listReplyPage(long bno,CriteriaQna cri);
	
	public int count(long bno);
	
	 // QnA Reply List 조회
    public List<qnaReplyVO> getReply(int bno);
	
}
