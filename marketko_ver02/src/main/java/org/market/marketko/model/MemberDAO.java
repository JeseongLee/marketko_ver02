package org.market.marketko.model;

import org.market.marketko.vo.DealerInfoVO;
import org.market.marketko.vo.MemberVO;

public interface MemberDAO {
	/** 기본 로그인*/
	public MemberVO loginMember(MemberVO memberVO);
	/**일반회원 가입*/
	public void registerMember(MemberVO memberVO);
	/**판매자 인증*/
	public void certifyDealer(DealerInfoVO dealerInfoVO);
	/**회원가입 시 이메일 중복 검사*/
	public String checkEmail(String email);
	/**회원가입 시 닉네임 중복 검사*/
	public String checkNickName(String nickName);
	/**판매자 인증시 사업자번호 중복 검사*/
	public Object checkPermitNumber(String permitNumber);
	/**이메일을 이용해서 정보 가지고 오기*/
	public MemberVO getMemberInfoByMemberEmail(String memberEmail);
	/**판매자 권한 부여*/
	public void updateMemberToDealer(String memberEmail);
}
