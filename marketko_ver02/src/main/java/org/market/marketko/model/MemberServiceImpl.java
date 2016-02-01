package org.market.marketko.model;

import javax.annotation.Resource;

import org.market.marketko.vo.DealerInfoVO;
import org.market.marketko.vo.MemberVO;
import org.springframework.stereotype.Service;

@Service
public class MemberServiceImpl implements MemberService {
	@Resource
	private MemberDAO memberDAO;
	
	/**
	 * 기본 로그인
	 * @author Jeseong Lee
	 */
	@Override
	public MemberVO loginMember(MemberVO memberVO) {
		return memberDAO.loginMember(memberVO);
	}
	
	@Override
	public void registerMember(MemberVO memberVO) {
		memberDAO.registerMember(memberVO);
	}

	@Override
	public void certifyDealer(DealerInfoVO dealerInfoVO) {
		memberDAO.updateMemberToDealer(dealerInfoVO.getMemberVO().getMemberEmail());
		memberDAO.certifyDealer(dealerInfoVO);
	}

	@Override
	public String checkEmail(String email) {
		String result = "";
		if(memberDAO.checkEmail(email)==null||memberDAO.checkEmail(email).equals("")){
			result = "T";
		}else{
			result  ="F";
		}
		return result;
	}

	@Override
	public String checkNickName(String nickName) {
		String result = "";
		if(memberDAO.checkNickName(nickName)==null||memberDAO.checkNickName(nickName).equals("")){
			result = "T";
		}else{
			result  ="F";
		}
		return result;
	}

	@Override
	public String checkPermitNumber(String permitNumber) {
		String result = "";
		if(memberDAO.checkPermitNumber(permitNumber)==null||memberDAO.checkPermitNumber(permitNumber).equals("")){
			result = "T";
		}else{
			result  ="F";
		}
		return result;
	}

	@Override
	public MemberVO getMemberInfoByMemberEmail(String memberEmail) {
		return memberDAO.getMemberInfoByMemberEmail(memberEmail);
	}
}
