package org.market.marketko.vo;

public class RegularVO {
	private MemberVO memberDealer;
	private MemberVO memberBuyer;
	private String signupDate;
	public RegularVO() {
		super();
	}
	public RegularVO(MemberVO memberDealer, MemberVO memberBuyer,
			String signupDate) {
		super();
		this.memberDealer = memberDealer;
		this.memberBuyer = memberBuyer;
		this.signupDate = signupDate;
	}
	public MemberVO getMemberDealer() {
		return memberDealer;
	}
	public void setMemberDealer(MemberVO memberDealer) {
		this.memberDealer = memberDealer;
	}
	public MemberVO getMemberBuyer() {
		return memberBuyer;
	}
	public void setMemberBuyer(MemberVO memberBuyer) {
		this.memberBuyer = memberBuyer;
	}
	public String getSignupDate() {
		return signupDate;
	}
	public void setSignupDate(String signupDate) {
		this.signupDate = signupDate;
	}
	@Override
	public String toString() {
		return "RegularVO [memberDealer=" + memberDealer + ", memberBuyer="
				+ memberBuyer + ", signupDate=" + signupDate + "]";
	}

}
