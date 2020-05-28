package com.pj.service;

import java.util.List;

import org.springframework.stereotype.Service;
import com.pj.dao.QnaDao;
import com.pj.domain.CriteriaQna;
import com.pj.vo.QnaBoardVO;
import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class QnaBoardServiceImpl implements QnaBoardService {
	
	private final QnaDao dao;
	
	public QnaBoardServiceImpl(QnaDao dao) {
		this.dao = dao;
	}
	
	@Override
	public void insert(QnaBoardVO vo) {
		dao.insert(vo);
	}
	
	@Override
	public void delete(int num) {
		dao.delete(num);
	}
	
	@Override
	public QnaBoardVO read(int num) {
		dao.viewCount(num);
		return dao.read(num);
	}
	
	@Override
	public void update(QnaBoardVO vo) {
		dao.update(vo);
	}
	
	@Override
	public List<QnaBoardVO> list(CriteriaQna cri){
		log.info(cri.getPageNum());
		log.info(cri.getAmount());
		return dao.getListWithPaging(cri);
	}
	
	@Override
	public int totalCount(CriteriaQna cri) {
		log.info(cri);
		return dao.totalCount(cri);
	}


}
