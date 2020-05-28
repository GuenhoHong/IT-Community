package com.pj.dao;


import java.util.List;


import com.pj.domain.CriteriaQna;
import com.pj.vo.qnaReplyVO;

public interface qnaReplyDAO {
	
	//Qna Reply 등록
	public void insert(qnaReplyVO qnaReplyVO); 
	
	//Qna Read
	public List<qnaReplyVO> list(long bno);
	
	//Qna Reply 삭제
	public void delete(long rno);
	
	//Qna Reply 수정
	public void update(qnaReplyVO qnaReplyVO);
	
	public List<qnaReplyVO> listPage(long bno, CriteriaQna cri);
	
	public int count(long bno);
	
	public List<qnaReplyVO> getReplyList(int qna_no);
	
	
	
			
	
	
}
