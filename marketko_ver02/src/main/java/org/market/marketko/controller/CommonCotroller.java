package org.market.marketko.controller;

import javax.annotation.Resource;

import org.market.marketko.model.DealBoardService;
import org.market.marketko.model.MemberService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class CommonCotroller {
	@Resource
	private DealBoardService DealBoardService;
	@Resource
	private MemberService memberService;
	
	/**
	 * movingPageByViewId
	 * 설명 :  단순 페이지 이동 시 요청 유알엘과 뷰의 파일명을 맞추기만 하면 사용가능한 메서드
	 * @author Jeseong Lee
	 */
	@RequestMapping("{viewId}.mako")
	public String movingPageByViewId(@PathVariable String viewId){
		return viewId;
	}
	
}
