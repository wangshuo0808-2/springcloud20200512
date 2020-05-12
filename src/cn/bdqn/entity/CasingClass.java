package cn.bdqn.entity;

import java.util.List;

public class CasingClass {
	private List<Park> parkList;

	public List<Park> getParkList() {
		return parkList;
	}

	public void setParkList(List<Park> parkList) {
		this.parkList = parkList;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("CasingClass [parkList=").append(parkList).append("]");
		return builder.toString();
	}
	
	
	
	 
}
