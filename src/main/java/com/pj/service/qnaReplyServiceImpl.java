package com.pj.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pj.dao.qnaReplyDAO;
import com.pj.domain.CriteriaQna;
import com.pj.vo.qnaReplyVO;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class qnaReplyServiceImpl implements qnaReplyService {
	
	@Setter(onMethod_ = @Autowired)
	private qnaReplyDAO dao;
	
	@Override
	public void addReply(qnaReplyVO qnaReplyVO) {
		log.info("insert"+qnaReplyVO);
		dao.insert(qnaReplyVO);
		log.info("1111111111111");
	}
	
	@Override
	public void removeReply(int bno) {
		log.info("delete"+bno);
		dao.delete(bno);
	}
	
	@Override
	public void modifyReply(qnaReplyVO qnaReplyVO) {
		log.info("update"+qnaReplyVO);
		dao.update(qnaReplyVO);
	}
	
	@Override
	public List<qnaReplyVO> listReply(long bno){
		return dao.list(bno);
	}
	
	@Override
	public List<qnaReplyVO> listReplyPage(long bno, CriteriaQna cri){
		return dao.listPage(bno,cri);
	}
	
	@Override
	public int count(long bno) {
		return dao.count(bno);
	}
	
	@Override
	public List<qnaReplyVO> getReply(int bno){
		return dao.getReplyList(bno);
	}
	

}
