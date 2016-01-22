package org.market.marketko.model;

import javax.annotation.Resource;

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
}
