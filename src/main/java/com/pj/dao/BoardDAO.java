package com.pj.dao;

import java.util.List;

import com.pj.domain.CriteriaFree;
import com.pj.vo.BoardVO;

public interface BoardDAO {

	//게시글 작성하기
	public void create(BoardVO vo);
	
	//게시글 수정하기
	public void update(BoardVO vo);

	//게시글 삭제하기
	public void delete(int bno);
	
	//게시글 번호로 조회하기
	public BoardVO read(int bno);

	//전체 게시글 리스트 조회하기
	public List<BoardVO> getListWithPaging(CriteriaFree cri);
	
	//게시글 총 수 구하기
	public int totalCount(CriteriaFree cri);
	
	//hit수 구현하기
	void viewCount(int num);
	
	

}