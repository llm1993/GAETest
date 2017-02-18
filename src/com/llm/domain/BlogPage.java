package com.llm.domain;

import java.util.ArrayList;
import java.util.List;

public class BlogPage {
	private final int pageSize = 10;
	private int total;
	private int totalPage;
	private int currentPageNo;

	private boolean isFirstPage; // 是否为第一页
	private boolean isLastPage; // 是否为最后一页
	private boolean hasPreviousPage; // 是否有前一页
	private boolean hasNextPage; // 是否有下一页

	private List list = new ArrayList(); // 要返回的某一页的记录列表

	public BlogPage(int currentPageNo, int total) {
		this.total = total;
		totalPage = (total + 10) / 10;
		if (currentPageNo > totalPage || currentPageNo < 1)
			this.currentPageNo = 1;
		else
			this.currentPageNo = currentPageNo;
		
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public int getTotalPage() {
		return totalPage;
	}

	public void setTotalPage(int totalPage) {
		this.totalPage = totalPage;
	}

	public int getCurrentPageNo() {
		return currentPageNo;
	}

	public void setCurrentPageNo(int currentPageNo) {
		this.currentPageNo = currentPageNo;
	}

	public boolean isFirstPage() {
		return currentPageNo == 1; // 如是当前页是第1页
	}

	public boolean isLastPage() {
		return currentPageNo == totalPage; // 如果当前页是最后一页
	}

	public boolean isHasPreviousPage() {
		return currentPageNo != 1; // 只要当前页不是第1页
	}

	public boolean isHasNextPage() {
		return currentPageNo != totalPage; // 只要当前页不是最后1页
	}

	public List getList() {
		return list;
	}

	public void setList(List list) {
		this.list = list;
	}

	public int getPageSize() {
		return pageSize;
	}
}
