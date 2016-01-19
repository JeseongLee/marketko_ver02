package org.market.marketko.controller;

import javax.annotation.Resource;

import org.market.marketko.model.DealBoardService;
import org.market.marketko.vo.MemberVO;
import org.market.marketko.vo.ProductVO;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class DealBoardController {
	@Resource
	private DealBoardService dealBoardService;
	
	/**
	 * 메인에 상품리스트 받기 
	 */
	@RequestMapping("getMainProductList.mako")
	public ModelAndView getMainProductList(){
		return null;
	}
	
	/**
	 * 상품상세보기 by 상품번호 
	 */
	public ModelAndView productDetailViewByProductNumber(ProductVO productVO){
		return null;
	}
	
	/**
	 * 장바구니로 이동 / 구매하기
	 */
	public ModelAndView movingCart(MemberVO memberVO, ProductVO productVO){
		return null;
	}
	
	/**
	 * 상품 등록
	 */
	public ModelAndView registerProductInfo(MemberVO memberVO){
		return null;
	}
}
