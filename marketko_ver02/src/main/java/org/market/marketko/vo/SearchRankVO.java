package org.market.marketko.vo;

public class SearchRankVO {
	private String keyword;
	private int searchCount;
	public SearchRankVO() {
		super();
	}
	public SearchRankVO(String keyword, int searchCount) {
		super();
		this.keyword = keyword;
		this.searchCount = searchCount;
	}
	public String getKeyword() {
		return keyword;
	}
	public void setKeyword(String keyword) {
		this.keyword = keyword;
	}
	public int getSearchCount() {
		return searchCount;
	}
	public void setSearchCount(int searchCount) {
		this.searchCount = searchCount;
	}
	@Override
	public String toString() {
		return "SearchRankVO [keyword=" + keyword + ", searchCount="
				+ searchCount + "]";
	}
}
