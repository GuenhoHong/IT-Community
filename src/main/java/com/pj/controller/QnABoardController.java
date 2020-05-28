package com.pj.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import com.pj.domain.CriteriaQna;
import com.pj.domain.PageDtoQna;
import com.pj.service.QnaBoardService;
import com.pj.vo.QnaBoardVO;

import lombok.extern.log4j.Log4j;

@Controller
@Log4j
@RequestMapping("/qnaBoard")
public class QnABoardController {

	private final QnaBoardService service;

	public QnABoardController(QnaBoardService service) {
		this.service = service;
	}

	@GetMapping("/qnaWrite")
	public String queWrite() {
		return "/qnaBoard/qnaWrite";
	}

	@PostMapping("/qnaWrite")
	public String Write(QnaBoardVO vo, Model model) {
		log.info(vo.getNo());
		System.out.println("===============" + vo);
		service.insert(vo);
		model.addAttribute("result", vo.getNo());
		return "redirect:/qnaBoard/qnaList";

	}

	@GetMapping({ "/qnaView", "qnaModify" })
	public void getQnA(@RequestParam("no") int bno, @ModelAttribute("qnaCri") CriteriaQna qnaCri, Model model) {
		model.addAttribute("qnaBoard", service.read(bno));
	}

	@PostMapping("/qnaModify")
	public String qnaModify(@ModelAttribute QnaBoardVO vo, @ModelAttribute("qnaCri") CriteriaQna qnaCri, Model model) {
		service.update(vo);
		model.addAttribute("pageNum", qnaCri.getPageNum());
		model.addAttribute("amount", qnaCri.getAmount());
		model.addAttribute("qnaType", qnaCri.getQnaType());
		model.addAttribute("qnaKeyWord",qnaCri.getQnaKeyWord());
		log.info(qnaCri.getPageNum());
		return "redirect:/qnaBoard/qnaList";

	}

	@PostMapping("/qnaDelete")
	public String remove(@RequestParam("no") int bno, @ModelAttribute("qnaCri") CriteriaQna qnaCri,
			RedirectAttributes rttr) {
		log.info("modify" + bno);
		service.delete(bno);
		rttr.addAttribute("pageNum", qnaCri.getPageNum());
		rttr.addAttribute("amount", qnaCri.getAmount());
		rttr.addAttribute("qnaType", qnaCri.getQnaType());
		rttr.addAttribute("qnaKeyWord",qnaCri.getQnaKeyWord());
		return "redirect:/qnaBoard/qnaList";
	}

	@GetMapping("/qnaList")
	public String queBoard(CriteriaQna qnaCri, Model model) {
		model.addAttribute("qnaList", service.list(qnaCri));
		int total = service.totalCount(qnaCri);
		log.info(qnaCri.getPageNum());
		log.info(qnaCri.getAmount());
		model.addAttribute("qnaPageMaker", new PageDtoQna(qnaCri, total));
		return "/qnaBoard/qnaList";
	}
	

}
