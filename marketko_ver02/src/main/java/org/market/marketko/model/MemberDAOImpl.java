package org.market.marketko.model;

import javax.annotation.Resource;

import org.market.marketko.vo.DealerInfoVO;
import org.market.marketko.vo.MemberVO;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.stereotype.Repository;

@Repository
public class MemberDAOImpl implements MemberDAO {
	
	@Resource
	private SqlSessionTemplate sessionTemplate;
	
	/**
	 * 기본 로그인
	 * @author Jeseong Lee
	 */
	@Override
	public MemberVO loginMember(MemberVO memberVO) {
		return sessionTemplate.selectOne("member.loginMember", memberVO);
	}
	
	@Override
	public void registerMember(MemberVO memberVO) {
		sessionTemplate.insert("member.memberRegister", memberVO);
	}

	@Override
	public void certifyDealer(DealerInfoVO dealerInfoVO) {
		sessionTemplate.insert("member.dealerInfoRegister", dealerInfoVO);
	}

	@Override
	public String checkEmail(String email) {
		return sessionTemplate.selectOne("member.checkEmail", email);
	}

	@Override
	public String checkNickName(String nickName) {
		return sessionTemplate.selectOne("member.checkNickName", nickName);
	}

	@Override
	public Object checkPermitNumber(String permitNumber) {
		return sessionTemplate.selectOne("member.checkPermitNumber", permitNumber);
	}

	@Override
	public MemberVO getMemberInfoByMemberEmail(String memberEmail) {
		return sessionTemplate.selectOne("member.getMemberInfoByMemberEmail", memberEmail);
	}

	@Override
	public void updateMemberToDealer(String memberEmail) {
		sessionTemplate.update("member.updateMemberToDealer", memberEmail);
	}
	
}
