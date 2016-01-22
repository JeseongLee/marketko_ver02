package org.market.marketko.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.market.marketko.model.MemberService;
import org.market.marketko.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;
	
	
	/**
	 * 회원 가입
	 */
	public ModelAndView registerMember(MemberVO memberVO){
		return null;
	}
	
	/**
	 * 회원 정보 수정
	 */
	public ModelAndView updateMemberInfo(MemberVO memberVO){
		return null;
	}
	
	/**
	 * 회원 탈퇴
	 */
	public ModelAndView withdrawlMember(MemberVO memberVO){
		return null;
	}
	
	/**
	 * 판매자 인증
	 */
	public ModelAndView certifyDealer(){
		return null;
	}
	
	/**
	 * 기본 로그인
	 * @author Jeseong Lee
	 */
	@RequestMapping(value="memberLogin.mako", method=RequestMethod.POST)
	public ModelAndView loginMember(HttpServletRequest request, MemberVO memberVO){
		// System.out.println("넘어오는 MVO : " + memberVO);
		HttpSession session = request.getSession();
		memberVO = memberService.loginMember(memberVO);
		ModelAndView mav = new ModelAndView();
		if(memberVO!=null){
			session.setAttribute("memberVO", memberVO);
			mav = new ModelAndView("redirect:home.mako");
		}else{
			String loginFailMessage ="아이디와 비밀번호가 일치하지 않습니다";
			mav=new ModelAndView("loginPage","fail",loginFailMessage);
		}
		return mav;
	}
	
	/**
	 * 로그아웃
	 * @author Jeseong Lee
	 */
	@RequestMapping("memberLogout.mako")
	public ModelAndView memberLogout(HttpServletRequest request){
		HttpSession session = request.getSession(false);
		if(session !=null){
			session.invalidate();
		}
		return new ModelAndView("redirect:home.mako");
	}
	
	/**
	 * 닉네임 / 마이페이지에서 단골판매자 등록하기
	 */
	public ModelAndView enrollRegular(MemberVO memberVO){
		return null;
	}
	
}
