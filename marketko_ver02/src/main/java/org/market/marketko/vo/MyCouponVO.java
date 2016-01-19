package org.market.marketko.vo;

public class MyCouponVO {
	private int couponNumber;
	private MemberVO memberVO;
	private int discountRate;
	private int discountPrice;
	private String couponInfo;
	private String validationDate;
	public MyCouponVO() {
		super();
	}
	public MyCouponVO(int couponNumber, MemberVO memberVO, int discountRate, int discountPrice,
			String couponInfo, String validationDate) {
		super();
		this.couponNumber = couponNumber;
		this.memberVO = memberVO;
		this.discountRate = discountRate;
		this.discountPrice = discountPrice;
		this.couponInfo = couponInfo;
		this.validationDate = validationDate;
	}
	public int getCouponNumber() {
		return couponNumber;
	}
	public void setCouponNumber(int couponNumber) {
		this.couponNumber = couponNumber;
	}
	public MemberVO getMemberVO() {
		return memberVO;
	}
	public void setMemberVO(MemberVO memberVO) {
		this.memberVO = memberVO;
	}
	public int getDiscountRate() {
		return discountRate;
	}
	public void setDiscountRate(int discountPrice) {
		this.discountRate = discountPrice;
	}
	public int getDiscountPrice() {
		return discountRate;
	}
	public void setDiscountPrice(int discountPrice) {
		this.discountRate = discountPrice;
	}
	public String getCouponInfo() {
		return couponInfo;
	}
	public void setCouponInfo(String couponInfo) {
		this.couponInfo = couponInfo;
	}
	public String getValidationDate() {
		return validationDate;
	}
	public void setValidationDate(String validationDate) {
		this.validationDate = validationDate;
	}
	@Override
	public String toString() {
		return "MyCouponVO [couponNumber=" + couponNumber + ", memberVO="
				+ memberVO + ", discountRate=" + discountRate + ", discountPrice=" + discountPrice + ", couponInfo="
				+ couponInfo + ", validationDate=" + validationDate + "]";
	}
}
