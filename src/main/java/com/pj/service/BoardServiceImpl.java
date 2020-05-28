package com.pj.service;


import java.util.List;

import javax.inject.Inject;

import org.springframework.stereotype.Service;

import com.pj.dao.BoardDAO;
import com.pj.domain.CriteriaFree;
import com.pj.vo.BoardVO;

import lombok.extern.log4j.Log4j;

@Log4j
@Service
public class BoardServiceImpl implements BoardService {

	@Inject
	BoardDAO dao;
	
	@Override
	public void create(BoardVO vo) {
		log.info("게시글 작성하기");
		dao.create(vo);
	}
	
	@Override
	public void delete(int bno) {
		log.info("게시글 삭제하기");
		dao.delete(bno);
	}
	
	@Override
	public void update(BoardVO vo) {
		log.info("게시글 수정하기");
		dao.update(vo);
	}
	
	@Override
	public BoardVO read(int bno) {
		log.info("게시글 읽기");
		dao.viewCount(bno);
		return dao.read(bno);
	}
	
	@Override
	public List<BoardVO> getListWithPaging(CriteriaFree cri){
		log.info("전체 리스트를 출력한다");
		log.info("get List with paging" + cri);
		return dao.getListWithPaging(cri);
	}
	
	@Override
	public int totalCount(CriteriaFree cri) {
		log.info("총 개수");
		return dao.totalCount(cri);
	}



}