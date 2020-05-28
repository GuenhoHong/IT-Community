package com.pj.service;

import java.util.List;

import com.pj.domain.CriteriaQna;
import com.pj.vo.QnaBoardVO;

public interface QnaBoardService {

	public void insert(QnaBoardVO vo);
	
	public void update(QnaBoardVO vo);
	
	public void delete(int num);
	
	public QnaBoardVO read(int num);
	
	public List<QnaBoardVO> list(CriteriaQna cri);
	
	public int totalCount(CriteriaQna cri);
	

}
