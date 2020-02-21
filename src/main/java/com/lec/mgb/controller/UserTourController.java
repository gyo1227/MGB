package com.lec.mgb.controller;

import java.sql.Date;

import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lec.mgb.c.C;
import com.lec.mgb.command.Command;
import com.lec.mgb.command.UserTourCheckCommand;
import com.lec.mgb.command.UserTourListCommand;
import com.lec.mgb.command.UserTourReserveCommand;
import com.lec.mgb.command.UserTourViewCommand;
import com.lec.mgb.mybatis.beans.UserTourDTO;

@Controller
@RequestMapping("/user/tour")
public class UserTourController {
	// MyBatis
	private SqlSession sqlSession;
	
	@Autowired
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
		C.sqlSesssion = sqlSession;
	}
	private Command command;

	@RequestMapping("/list")
	public String listSelect(Model model) {
		command = new UserTourListCommand();
		command.execute(model);
		return "user/tour/list";
	}
	@GetMapping("/view/{tour_uid}")
	public String viewSelect(@PathVariable("tour_uid")int tour_uid, Model model) {
		model.addAttribute("tour_uid", tour_uid);
		new UserTourViewCommand().execute(model);
		return "user/tour/view";
	}
	@PostMapping("/reserve")
	public String ReserveSelect(int tour_uid, Date book_date, int book_member_cnt, Model model, HttpSession session) {
		int member_uid = (int) session.getAttribute("loginUid");
		
		model.addAttribute("member_uid", member_uid);
		model.addAttribute("tour_uid", tour_uid);
		model.addAttribute("book_date", book_date);
		model.addAttribute("book_member_cnt", book_member_cnt);
		new UserTourReserveCommand().execute(model);
		return "user/tour/reserve";
	}
	@RequestMapping("/check")
	public String ReserveCheck(UserTourDTO dto, Model model, HttpSession session) {
		int member_uid = (int) session.getAttribute("loginUid");
		model.addAttribute("member_uid", member_uid);
		model.addAttribute("dto", dto);
		
		new UserTourCheckCommand().execute(model);
		return "user/tour/check";
	}
	
}