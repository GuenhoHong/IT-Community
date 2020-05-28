package com.pj.dao;

import java.util.HashMap;
import java.util.List;
import java.util.Map;
import javax.inject.Inject;
import org.apache.ibatis.session.SqlSession;
import org.springframework.stereotype.Repository;
import com.pj.domain.CriteriaQna;
import com.pj.vo.qnaReplyVO;
import lombok.extern.log4j.Log4j;
@Log4j
@Repository
public class qnaReplyDaoImpl implements qnaReplyDAO {
	
	@Inject
	private SqlSession sql;
	private static String namespace = "com.pj.mapper.qnaReplyMapper";
	
	@Override
	public void insert(qnaReplyVO qnaReplyVO) {
		log.info("1222211");
		sql.insert(namespace+".insert",qnaReplyVO);
	}
	
	@Override
	public void delete(long rno) {
		sql.delete(namespace+".delete",rno);
	}
	
	@Override
	public List<qnaReplyVO> list(long bno){
		return sql.selectList(namespace+".list",bno);
	}
	
	@Override
	public void update(qnaReplyVO qnaReplyVO) {
		sql.update(namespace+".update",qnaReplyVO);
	}
	
	@Override
	public List<qnaReplyVO> listPage(long bno,CriteriaQna cri){
		Map<String,Object> paramMap = new HashMap<>();
		paramMap.put("bno",bno);
		paramMap.put("cri",cri);
		
		return sql.selectList(namespace+".count",bno);
	}
	
	@Override
	public int count(long bno) {
		return sql.selectOne(namespace+".count",bno);
	}
	
	@Override
	public List<qnaReplyVO> getReplyList(int bno){
		return sql.selectList(namespace+".getReplyList",bno);
	}
	
}
