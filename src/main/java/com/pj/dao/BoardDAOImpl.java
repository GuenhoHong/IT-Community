package com.pj.dao;

import java.util.List;

import javax.inject.Inject;

import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;

import com.pj.domain.CriteriaFree;
import com.pj.vo.BoardVO;

@Repository
public class BoardDAOImpl implements BoardDAO {

	@Inject
	private SqlSession sql;
	
	private static String namespace = "com.pj.mapper.freeBoardMapper";
	//xml의 namespace 명과 동일해야한다
	
	@Override
	public void create(BoardVO vo) {
		sql.insert(namespace+".insert",vo);
	}
	
	@Override
	public BoardVO read(int bno) {
		return sql.selectOne(namespace+".select",bno);
	}
	
	@Override
	public void delete(int bno) {
		sql.delete(namespace+".delete",bno);
	}
	
	@Override
	public void update(BoardVO vo) {
		sql.update(namespace+".update",vo);
	}
	
	@Override
	public List<BoardVO> getListWithPaging(CriteriaFree cri){
		return sql.selectList(namespace+".getListWithPaging",cri);
	}
	
	@Override
	public int totalCount(CriteriaFree cri) {
		return sql.selectOne(namespace+".totalCount",cri);
	}
	
	@Override
	public void viewCount(int num) {
		sql.update(namespace+".hit",num);
	}
	
	
}