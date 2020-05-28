package com.pj.dao;

import java.util.List;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.pj.domain.CriteriaQna;
import com.pj.vo.QnaBoardVO;

@Repository
public class QnaBoardDaoImpl implements QnaDao {
	
	@Inject
	private SqlSession sql;
	
	private static String namespace ="com.pj.mapper.qnaBoardMapper";

	@Override
	public void insert(QnaBoardVO vo) {
		sql.insert(namespace+".insert",vo);
	}
	
	@Override
	public QnaBoardVO read(int num) {
		return sql.selectOne(namespace+".select",num);
	}
	
	@Override
	public void update(QnaBoardVO vo) {
		sql.update(namespace+".update",vo);
	}
	
	@Override
	public void delete(int num) {
		sql.delete(namespace+".delete",num);
	}
	
	@Override
	public List<QnaBoardVO> getListWithPaging(CriteriaQna cri){
		return sql.selectList(namespace+".list",cri);
	}
	
	@Override
	public int totalCount(CriteriaQna cri) {
		return sql.selectOne(namespace+".totalCount",cri);
	}
	
	@Override
	public void viewCount(int num) {
		sql.update(namespace+".hit",num);
	}
	

}
