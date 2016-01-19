package org.market.marketko.vo;

public class DeliberyInfoVO {
	private MemberVO memberVO;
	private String deliveryAddress;
	private String memberAddress;
	
	public DeliberyInfoVO() {
		super();
	}

	public DeliberyInfoVO(MemberVO memberVO, String deliveryAddress,
			String memberAddress) {
		super();
		this.memberVO = memberVO;
		this.deliveryAddress = deliveryAddress;
		this.memberAddress = memberAddress;
	}

	public MemberVO getMemberVO() {
		return memberVO;
	}

	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}

	public String getDeliveryAddress() {
		return deliveryAddress;
	}

	public void setDeliveryAddress(String deliveryAddress) {
		this.deliveryAddress = deliveryAddress;
	}

	public String getMemberAddress() {
		return memberAddress;
	}

	public void setMemberAddress(String memberAddress) {
		this.memberAddress = memberAddress;
	}

	@Override
	public String toString() {
		return "DeliberyInfoVO [memberVO=" + memberVO + ", deliveryAddress="
				+ deliveryAddress + ", memberAddress=" + memberAddress + "]";
	}
	
	
}
