package com.mega.mvcProject;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
public class MemberController {
	
	@Autowired
	MemberDAO dao;
	
	@RequestMapping("login.do")
	public String login(MemberDTO2 memberDTO2, HttpSession session,Model model) {
		  int result = dao.login(memberDTO2);
		   String page = "";
		   if (result == 1) {
			   page = "redirect:memberlogin.jsp";
		   }else {
			   session.setAttribute("id", memberDTO2.getId());
		      page = "redirect:main2.jsp";// 
		   }
		   return page;
		   }

	
	@RequestMapping("logout.do")
	public String logout(HttpSession session) {
		session.invalidate();
		String page = "redirect:main.jsp";
		return page;
	}
	@RequestMapping("list.do")
	public void list(Model model) {
		List<MemberDTO2> list = dao.list();
		model.addAttribute("list", list);
	}
	
	
	@RequestMapping("select.do")
	public void select(MemberDTO2 memberDTO2, Model model) {
		MemberDTO2 dto= dao.select(memberDTO2);
		model.addAttribute("dto", dto);
	}
	
	@RequestMapping("insert.do")
	public void insert(MemberDTO2 memberDTO2) {
		dao.insert(memberDTO2);
	}
	
	@RequestMapping("delete.do")
	public void delete(MemberDTO2 memberDTO2,HttpSession session) {
		dao.delete(memberDTO2);
		session.invalidate();
	}
	
	@RequestMapping("update.do")
	public void update(MemberDTO2 memberDTO2) {
		dao.update(memberDTO2);
	}
	
	@RequestMapping("idcheck.do")
	public void idcheck(MemberDTO2 memberDTO2, Model model) {
		int result = dao.idcheck(memberDTO2);
		if (result ==0) {
			model.addAttribute("idc", "중복된 아이디입니다.");
		}else {
			model.addAttribute("idc", "사용 가능한 아이디입니다.");
		}
		dao.idcheck(memberDTO2);
	}
	
}
