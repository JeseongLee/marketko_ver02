package org.market.marketko;

import javax.annotation.Resource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.market.marketko.model.MemberService;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = { "file:src/main/webapp/WEB-INF/spring/root-context.xml" })
public class JeSeongTest {
	@Resource
	private MemberService memberService;

	@Test
	public void test() {

	}
}