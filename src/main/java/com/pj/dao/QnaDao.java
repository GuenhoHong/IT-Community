package com.pj.dao;

import java.util.List;
import com.pj.domain.CriteriaQna;
import com.pj.vo.QnaBoardVO;

public interface QnaDao {
	
	public void insert(QnaBoardVO vo);
	
	public QnaBoardVO read(int no);
	
	public void update(QnaBoardVO vo);
	
	public void delete(int no);
	
	public List<QnaBoardVO> getListWithPaging(CriteriaQna cri);

	void viewCount(int num);
	
	public int totalCount(CriteriaQna cri);
		

}
