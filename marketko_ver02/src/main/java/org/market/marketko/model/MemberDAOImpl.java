package org.market.marketko.model;

import javax.annotation.Resource;

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
	
}
