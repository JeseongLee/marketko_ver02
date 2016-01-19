package org.market.marketko.controller;

import javax.annotation.Resource;

import org.market.marketko.model.MemberService;
import org.market.marketko.vo.MemberVO;
import org.springframework.stereotype.Controller;
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
	 * 로그인
	 */
	public ModelAndView loginMember(MemberVO memberVO){
		return null;
	}
	
	/**
	 * 로그아웃
	 */
	public ModelAndView logoutMember(MemberVO memberVO){
		return null;
	}
	
	/**
	 * 닉네임 / 마이페이지에서 단골판매자 등록하기
	 */
	public ModelAndView enrollRegular(MemberVO memberVO){
		return null;
	}
	
}
