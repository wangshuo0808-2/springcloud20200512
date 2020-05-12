package cn.bdqn.util;

import java.util.List;

public class Page<T>{
	private Integer pageNo;//当前页
	private Integer totalCount;//总记录数
	private Integer pageSize;//页面容量
	private Integer totalPageCount;
	private List<T> list;//页面列表
	public Integer getPageNo() {
		return pageNo;
	}
	public void setPageNo(Integer pageNo) {
		this.pageNo = pageNo;
	}
	public Integer getTotalCount() {
		return totalCount;
	}
	public void setTotalCount(Integer totalCount) {
		this.totalCount = totalCount;
		this.totalPageCount=(this.totalCount%pageSize==0)?(this.totalCount/pageSize):(this.totalCount/pageSize+1);
	}
	public Integer getPageSize() {
		return pageSize;
	}
	public void setPageSize(Integer pageSize) {
		this.pageSize = pageSize;
	}
	public Integer getTotalPageCount() {
		return totalPageCount;
	}
	public void setTotalPageCount(Integer totalPageCount) {
		this.totalPageCount = totalPageCount;
	}
	public List<T> getList() {
		return list;
	}
	public void setList(List<T> list) {
		this.list = list;
	}
	@Override
	public String toString() {
		return "Page [list=" + list + ", pageNo=" + pageNo + ", pageSize="
				+ pageSize + ", totalCount=" + totalCount + ", totalPageCount="
				+ totalPageCount + "]";
	}
	
}
