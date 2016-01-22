package org.market.marketko.model;

import org.market.marketko.vo.MemberVO;

public interface MemberService {

	// 기본 로그인
	public MemberVO loginMember(MemberVO memberVO);
}
