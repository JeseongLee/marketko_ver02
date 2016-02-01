package org.market.marketko.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.market.marketko.model.MemberService;
import org.market.marketko.vo.DealerInfoVO;
import org.market.marketko.vo.MemberVO;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class MemberController {
	@Resource
	private MemberService memberService;
	
	
	/**
	 * 회원 가입
	 */
	@RequestMapping("registerMember.mako")
	public ModelAndView registerMember(MemberVO memberVO){
		memberVO.setMemberAuth("0");
//		memberService.registerMember(memberVO);
		return new ModelAndView("registerSuccess");
	}
	
	/**
	 * 판매자 회원가입
	 */
	@RequestMapping("registerDealer.mako")
	@Transactional
	public ModelAndView registerDealer(MemberVO memberVO,DealerInfoVO dealerInfoVO){
		dealerInfoVO.getMemberVO().setMemberAuth("1");
		dealerInfoVO.setMemberVO(memberVO);
//		memberService.registerMember(dealerInfoVO.getMemberVO());
		dealerInfoVO.setDealerGrade("새싹등급");
//		memberService.certifyDealer(dealerInfoVO);
		return new ModelAndView("registerSuccess");
	}
	/**
	 * 마이페이지로 이동
	 */
	@RequestMapping("auth_memberMyPage.mako")
	public ModelAndView myPage(String memberEmail){
		ModelAndView mv = new ModelAndView("memberMyPage");
		MemberVO memberVO = memberService.getMemberInfoByMemberEmail(memberEmail);
		mv.addObject("memberVOInfo", memberVO);
		return mv;
	}
	/**
	 * 회원 정보 수정시 자신의 정보를 가지고 jsp로 이동
	 */
	@RequestMapping("auth_movingPageForUpdate.mako")
	public ModelAndView movingPageForUpdate(String memberEmail){
		MemberVO memberVO = memberService.getMemberInfoByMemberEmail(memberEmail);
		//return new ModelAndView("", "memberVOInfo", memberVO);
		return new ModelAndView("redirect:home.mako");
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
	@RequestMapping("auth_certifyDealer.mako")
	public ModelAndView certifyDealer(DealerInfoVO dealerInfoVO, HttpServletRequest request){
		dealerInfoVO.setDealerGrade("새싹등급");
		memberService.certifyDealer(dealerInfoVO);
		
		HttpSession session = request.getSession(false);
		MemberVO memberVO = (MemberVO)session.getAttribute("memberVO");
		memberVO.setMemberAuth("1");
		session.setAttribute("memberVO", memberVO);

		return new ModelAndView("certifySuccess");
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
	
	/**
	 * 회원가입 시 이메일 중복검사
	 */
	@RequestMapping("checkEmail.mako")
	@ResponseBody
	public boolean checkEmail(String memberEmail){
		String result = memberService.checkEmail(memberEmail);
		if(result.equals("T")){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 회원가입 시 이메일 중복검사
	 */
	@RequestMapping("checkNickName.mako")
	@ResponseBody
	public boolean checkNickName(String memberNickName){

		String result= 	memberService.checkNickName(memberNickName);
		if(result.equals("T")){
			return true;
		}else{
			return false;
		}
	}
	
	/**
	 * 판매자 인증시 사업자번호 중복검사
	 */
	@RequestMapping("checkPermitNumber.mako")
	@ResponseBody
	public String checkPermitNumber(String permitNumber){

		return 	memberService.checkPermitNumber(permitNumber);	
	}
	
}
