package org.market.marketko.vo;

public class CategoryVO {
	private int productNumber;
	private String highGroup;
	private String middleGroup;
	private String lowGroup;
	public CategoryVO() {
		super();
	}
	public CategoryVO(int productNumber, String highGroup, String middleGroup,
			String lowGroup) {
		super();
		this.productNumber = productNumber;
		this.highGroup = highGroup;
		this.middleGroup = middleGroup;
		this.lowGroup = lowGroup;
	}
	public int getProductNumber() {
		return productNumber;
	}
	public void setProductNumber(int productNumber) {
		this.productNumber = productNumber;
	}
	public String getHighGroup() {
		return highGroup;
	}
	public void setHighGroup(String highGroup) {
		this.highGroup = highGroup;
	}
	public String getMiddleGroup() {
		return middleGroup;
	}
	public void setMiddleGroup(String middleGroup) {
		this.middleGroup = middleGroup;
	}
	public String getLowGroup() {
		return lowGroup;
	}
	public void setLowGroup(String lowGroup) {
		this.lowGroup = lowGroup;
	}
	@Override
	public String toString() {
		return "CategoryVO [productNumber=" + productNumber + ", highGroup="
				+ highGroup + ", middleGroup=" + middleGroup + ", lowGroup="
				+ lowGroup + "]";
	}
}
