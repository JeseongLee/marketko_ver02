package org.market.marketko.vo;

public class MemberVO {
	private String memberEmail;
	private String memberNickName;
	private String memberBirth;
	private String memberPnumber;
	private String memberPassword;
	private String memberAuth;
	private int memberPoint;
	private int memberCash;
	private String memberJoinDate;
	private String memberLoginTime;
	private int memberDailyAttendedCount;

	public MemberVO() {
		super();
	}

	public MemberVO(String memberEmail, String memberNickName,
			String memberBirth, String memberPnumber, String memberPassword,
			String memberAuth, int memberPoint, int memberCash,
			String memberJoinDate, String memberLoginTime,
			int memberDailyAttendedCount) {
		super();
		this.memberEmail = memberEmail;
		this.memberNickName = memberNickName;
		this.memberBirth = memberBirth;
		this.memberPnumber = memberPnumber;
		this.memberPassword = memberPassword;
		this.memberAuth = memberAuth;
		this.memberPoint = memberPoint;
		this.memberCash = memberCash;
		this.memberJoinDate = memberJoinDate;
		this.memberLoginTime = memberLoginTime;
		this.memberDailyAttendedCount = memberDailyAttendedCount;
	}

	public String getMemberEmail() {
		return memberEmail;
	}

	public void setMemberEmail(String memberEmail) {
		this.memberEmail = memberEmail;
	}

	public String getMemberNickName() {
		return memberNickName;
	}

	public void setMemberNickName(String memberNickName) {
		this.memberNickName = memberNickName;
	}

	public String getMemberBirth() {
		return memberBirth;
	}

	public void setMemberBirth(String memberBirth) {
		this.memberBirth = memberBirth;
	}

	public String getMemberPnumber() {
		return memberPnumber;
	}

	public void setMemberPnumber(String memberPnumber) {
		this.memberPnumber = memberPnumber;
	}

	public String getMemberPassword() {
		return memberPassword;
	}

	public void setMemberPassword(String memberPassword) {
		this.memberPassword = memberPassword;
	}

	public String getMemberAuth() {
		return memberAuth;
	}

	public void setMemberAuth(String memberAuth) {
		this.memberAuth = memberAuth;
	}

	public int getMemberPoint() {
		return memberPoint;
	}

	public void setMemberPoint(int memberPoint) {
		this.memberPoint = memberPoint;
	}

	public int getMemberCash() {
		return memberCash;
	}

	public void setMemberCash(int memberCash) {
		this.memberCash = memberCash;
	}

	public String getMemberJoinDate() {
		return memberJoinDate;
	}

	public void setMemberJoinDate(String memberJoinDate) {
		this.memberJoinDate = memberJoinDate;
	}

	public String getMemberLoginTime() {
		return memberLoginTime;
	}

	public void setMemberLoginTime(String memberLoginTime) {
		this.memberLoginTime = memberLoginTime;
	}

	public int getMemberDailyAttendedCount() {
		return memberDailyAttendedCount;
	}

	public void setMemberDailyAttendedCount(int memberDailyAttendedCount) {
		this.memberDailyAttendedCount = memberDailyAttendedCount;
	}

	@Override
	public String toString() {
		return "MemberVO [memberEmail=" + memberEmail + ", memberNickName="
				+ memberNickName + ", memberBirth=" + memberBirth
				+ ", memberPnumber=" + memberPnumber + ", memberPassword="
				+ memberPassword + ", memberAuth=" + memberAuth
				+ ", memberPoint=" + memberPoint + ", memberCash=" + memberCash
				+ ", memberJoinDate=" + memberJoinDate + ", memberLoginTime="
				+ memberLoginTime + ", memberDailyAttendedCount="
				+ memberDailyAttendedCount + "]";
	}

}
