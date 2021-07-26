package com.fnf.spring.service;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fnf.spring.dao.MemberDao;
import com.fnf.spring.dto.MemberDto;


@Service
public class MemberService {

	//dao를 Autowired 할 것!
	@Autowired
	private MemberDao mDao;
	
	//session을 Autowired 할 것!
	@Autowired
	HttpSession session;
	
	//ModelAndView 하나 만들자!
	ModelAndView mv;
	
	
	@Transactional
	public String memberInsert(MemberDto member, RedirectAttributes rttr) {
		String view = null;
		
		
		//회원 가입 처리 나머지.. 코드..
		try {
			mDao.memberInsert(member);
			
			view = "redirect:/";
			rttr.addFlashAttribute("msg", "가입 성공");
			
		} catch (Exception e) {
			view = "redirect:join";
			rttr.addFlashAttribute("msg","가입 실패");
		}
		
	
		return view;
		
		
	}

}
