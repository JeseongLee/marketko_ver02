package org.market.marketko;


import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.market.marketko.model.DealBoardDAO;
import org.market.marketko.model.DealBoardService;
import org.market.marketko.model.MemberDAO;
import org.market.marketko.model.MemberService;
import org.market.marketko.vo.DealerInfoVO;
import org.market.marketko.vo.MemberVO;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations={"file:src/main/webapp/WEB-INF/spring/root-context.xml"})

/*file:src/main/webapp/WEB-INF/spring/root-context.xml*/
public class YuJeongTest {
	@Resource
	private MemberService memberService;

	@Test
	public void test(){
		MemberVO mvo = new MemberVO();
		mvo.setMemberEmail("a");
		//memberService.memberRegister(new MemberVO("a", "a", "1991-12-20", "010", "1234", "1", 0, 0, null, null, 0));
		//memberService.dealerInfoRegister(new DealerInfoVO(mvo, 12, "꺅"));
	
	}
}