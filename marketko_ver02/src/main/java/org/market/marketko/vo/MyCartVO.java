package org.market.marketko.vo;

public class MyCartVO {
	private MemberVO memberVO;
	private ProductVO productVO;
	private int amount;
	public MyCartVO() {
		super();
	}
	public MyCartVO(MemberVO memberVO, ProductVO productVO, int amount) {
		super();
		this.memberVO = memberVO;
		this.productVO = productVO;
		this.amount = amount;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	@Override
	public String toString() {
		return "MyCartVO [memberVO=" + memberVO + ", productVO=" + productVO
				+ ", amount=" + amount + "]";
	}
	
	
	
}
