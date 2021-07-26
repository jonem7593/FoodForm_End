package com.fnf.spring;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.fnf.spring.dto.MemberDto;
import com.fnf.spring.service.MemberService;
import com.fnf.spring.HomeController;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);


	@Autowired
	private MemberService mServ;

	ModelAndView mv;

	@GetMapping("/")
	public String home() {

		return "home";
	}

	@GetMapping("joinForm")
	public String joinForm() {

		return "joinForm";
	}

	@GetMapping("boardCenter")//고객센터========================이나경
	public String boardCenter() {

		return "boardCenter";
	}
	@GetMapping("qna")//자주하는질문============================이나경
	public String qna() {

		return "qna";
	}
	@GetMapping("inquiry")//1:1문의=============================이나경
	public String inquiry() {

		return "inquiry";
	}
	@GetMapping("boardWrite")//게시판글쓰기=====================이나경
	public String boardWrite() {

		return "boardWrite";

	}
	@GetMapping("boardList")//게시판리스트======================이나경
	public String boardList() {

		return "boardList";
	}
	@GetMapping("boardContents")//==============================이나경
	public String boardContents() {

		return "boardContents";
	}	

	@GetMapping("boardRead")//==================================이나경
	public String boardRead() {

		return "boardRead";
	}

	@GetMapping("join")//회원가입===============================김예원
	public String join() {

		return "join";
	}
	@GetMapping("login")//로그인================================김예원
	public String login() {

		return "login";
	}
	@GetMapping("myPage")//마이페이지===========================김예원
	public String myPage() {

		return "myPage";
	}
	@GetMapping("myPage_orderHistory")//마이페이지_주문내역=====김예원
	public String myPage_orderHistory() {

		return "myPage_orderHistory";
	}

	@GetMapping("myPage_productReview")//마이페이지_상품후기====김예원
	public String myPage_productReview() {

		return "myPage_productReview";
	}

	@GetMapping("myPage_question")//마이페이지_문의=============김예원
	public String myPage_question() {

		return "myPage_question";
	}

	@GetMapping("myPage_pointCoupon")//마이페이지_적립금/쿠폰===김예원
	public String myPage_pointCoupon() {

		return "myPage_pointCoupon";
	}

	@GetMapping("myPage_privacy")//개인정보수정=================김예원
	public String myPage_privacy() {

		return "myPage_privacy";
	}

	@GetMapping("shopping_basket")//장바구니====================김예원
	public String shopping_basket() {

		return "shopping_basket";
	}

	//================맵핑============================================//
	
	@PostMapping("memberInsert")
	public String memberInsert(MemberDto member,
			RedirectAttributes rttr) {
		logger.info("memberInsert()");

		String view = mServ.memberInsert(member, rttr);

		return view;


	}

}
