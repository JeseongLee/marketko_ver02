package org.market.marketko.vo;

public class TradeInfoVO {
	private int orderNumber;
	private ProductVO productVO;
	private MemberVO memberBuyer;
	private MemberVO memberDealer;
	private int amount;
	private String tradeDate;
	private String address;
	public TradeInfoVO() {
		super();
	}
	public TradeInfoVO(int orderNumber, ProductVO productVO,
			MemberVO memberBuyer, MemberVO memberDealer, int amount,
			String tradeDate, String address) {
		super();
		this.orderNumber = orderNumber;
		this.productVO = productVO;
		this.memberBuyer = memberBuyer;
		this.memberDealer = memberDealer;
		this.amount = amount;
		this.tradeDate = tradeDate;
		this.address = address;
	}
	public int getOrderNumber() {
		return orderNumber;
	}
	public void setOrderNumber(int orderNumber) {
		this.orderNumber = orderNumber;
	}
	public ProductVO getProductVO() {
		return productVO;
	}
	public void setProductVO(ProductVO productVO) {
		this.productVO = productVO;
	}
	public MemberVO getMemberBuyer() {
		return memberBuyer;
	}
	public void setMemberBuyer(MemberVO memberBuyer) {
		this.memberBuyer = memberBuyer;
	}
	public MemberVO getMemberDealer() {
		return memberDealer;
	}
	public void setMemberDealer(MemberVO memberDealer) {
		this.memberDealer = memberDealer;
	}
	public int getAmount() {
		return amount;
	}
	public void setAmount(int amount) {
		this.amount = amount;
	}
	public String getTradeDate() {
		return tradeDate;
	}
	public void setTradeDate(String tradeDate) {
		this.tradeDate = tradeDate;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	@Override
	public String toString() {
		return "TradeInfoVO [orderNumber=" + orderNumber + ", productVO="
				+ productVO + ", memberBuyer=" + memberBuyer
				+ ", memberDealer=" + memberDealer + ", amount=" + amount
				+ ", tradeDate=" + tradeDate + ", address=" + address + "]";
	}
}
