package com.mega.mvcProject;

import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class BbsController {

	@Autowired
	BbsDAO dao;

	@RequestMapping("reply_all.do") // 댓글 전체 검색
	public void reply_all(ReplyDTO replyDTO,Model model) {
		List<ReplyDTO> list = dao.reply_all(replyDTO);
		model.addAttribute("list",list);
		model.addAttribute("dto",replyDTO);
	}
	
	@RequestMapping("all.do") // 게시글 전체 검색
	public void all(String main,Model model) {
		 List<BbsDTO> list = dao.all(main);
		 model.addAttribute("list",list);
	}
	@RequestMapping("add.do")
	public void add(ReplyDTO replyDTO, ReplyDTO dto) {
		dto.setId(replyDTO.getId());
		dto.setNum(replyDTO.getNum());
		dto.setMain(replyDTO.getMain());
		dto.setTitle(replyDTO.getTitle());
		replyDTO.setR_num(dao.reply_all(dto).size()+1);
		dao.add(replyDTO);
	}
	@RequestMapping("bbs_insert.do")
	public void bbs_insert(BbsDTO bbsDTO) {
		bbsDTO.setNum(dao.all(bbsDTO.getMain()).size()+1);
		dao.bbs_insert(bbsDTO);
	}
	
	@RequestMapping("content.do")
	public void content(BbsDTO bbsdto, Model model) {
		BbsDTO dto = dao.content(bbsdto);
		model.addAttribute("dto", dto);
	}
	@RequestMapping("delete_bbs.do")
	public void delete(BbsDTO bbsDTO) {
		dao.delete(bbsDTO);
	}

	@RequestMapping("reply_delete.do")
	public void reply_delete(ReplyDTO replyDTO) {
		dao.reply_delete(replyDTO);
	}
	@RequestMapping("bbs_update.do")
	public void bbs_update(BbsDTO bbsdto, Model model) {
		BbsDTO dto = dao.content(bbsdto);
		model.addAttribute("dto", dto);
	}
	@RequestMapping("update_bbs.do")
	public void update(BbsDTO bbsDTO) {
		dao.update(bbsDTO);
	}
	
	
}
