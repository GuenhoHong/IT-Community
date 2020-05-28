package com.pj.service;

import java.util.List;

import com.pj.domain.CriteriaFree;
import com.pj.vo.BoardVO;

public interface BoardService{
	
	public void create(BoardVO vo);
	
	public void update(BoardVO vo);
	
	public void delete(int bno);
	
	public BoardVO read(int bno);
	
	public List<BoardVO> getListWithPaging(CriteriaFree cri);
	
	public int totalCount(CriteriaFree cri);
	
	
	
	
}