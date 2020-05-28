package com.pj.controller;


import javax.inject.Inject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pj.domain.CriteriaFree;
import com.pj.domain.PageDtoFree;
import com.pj.service.BoardService;
import com.pj.vo.BoardVO;
import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/freeBoard")
public class BoardController {
	
	@Inject
	BoardService service;
	
	@GetMapping("/freeWrite")
	public String getwriteView() {
		return "/freeBoard/freeWrite";
	}

	@PostMapping("/freeWrite")
	public String writeView(BoardVO vo, RedirectAttributes rttr) throws Exception {
		log.info("write Text"+ vo);
		service.create(vo);
		rttr.addAttribute("result",vo.getNO());
		return "redirect:/freeBoard/freeList";
		
	}
	
	@GetMapping({"/freeView","/freeModify"})
	public void getNotice(@RequestParam("NO") int bno, @ModelAttribute("cri") CriteriaFree cri,Model model) {
		log.info("게시글 조회하기");
		model.addAttribute("board",service.read(bno));
	}
	
	@GetMapping("/freeList") 
	public void getfreeBoard(CriteriaFree cri, Model model) throws Exception { 
		log.info("list"+cri);
		model.addAttribute("list",service.getListWithPaging(cri));
		int total = service.totalCount(cri);
		log.info("total"+total);
		model.addAttribute("pageMaker",new PageDtoFree(cri, total));
	}

	
	@PostMapping("/freeModify")
	public String boardModify(@ModelAttribute BoardVO vo, @ModelAttribute("cri") CriteriaFree cri, RedirectAttributes rttr) {
		log.info("modify" + vo);
		service.update(vo);
		log.info(cri.getPageNum());
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());
		rttr.addAttribute("freeType",cri.getFreeType());
		rttr.addAttribute("freeKeyWord",cri.getFreeKeyWord());
		return "redirect:/freeBoard/freeList/";
		
	}
	
	
	@PostMapping("/deleteView")
	public String deleteView(@RequestParam("NO") int bno, @ModelAttribute("cri") CriteriaFree cri, RedirectAttributes rttr) {
		log.info(bno + ": 번호를 삭제 합니다");
		service.delete(bno);
		rttr.addAttribute("pageNum",cri.getPageNum());
		rttr.addAttribute("amount",cri.getAmount());
		rttr.addAttribute("freeType",cri.getFreeType());
		rttr.addAttribute("freeKeyWord",cri.getFreeKeyWord());
		return "redirect:/freeBoard/freeList";
	}
	

}