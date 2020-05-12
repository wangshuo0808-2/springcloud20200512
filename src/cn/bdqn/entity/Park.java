package cn.bdqn.entity;

public class Park {

	/*parkId int(5)主键，景区表id，自增
	parkName varchar(50)景区名称
	parkIntroduce varchar(500)景区介绍
	alreadyVisitCount int(5)去过人数 默认0
	wantToVisitCount int(5)想去人数 默认0
	cityName varchar(50) 所在城市*/
	
	private int parkId;
	private String parkName;
	private String parkIntroduce;
	private int alreadyVisitCount;
	private int wantToVisitCount;
	private String cityName;
	private String photo;
	private int userId;
	private String bestMonth;
	private String suitPeople;
	private int tourType;

	
	//添加 set/get 方法
	public int getParkId() {
		return parkId;
	}
	public void setParkId(int parkId) {
		this.parkId = parkId;
	}
	public String getParkName() {
		return parkName;
	}
	public void setParkName(String parkName) {
		this.parkName = parkName;
	}
	public String getParkIntroduce() {
		return parkIntroduce;
	}
	public void setParkIntroduce(String parkIntroduce) {
		this.parkIntroduce = parkIntroduce;
	}
	public int getAlreadyVisitCount() {
		return alreadyVisitCount;
	}
	public void setAlreadyVisitCount(int alreadyVisitCount) {
		this.alreadyVisitCount = alreadyVisitCount;
	}
	public int getWantToVisitCount() {
		return wantToVisitCount;
	}
	public void setWantToVisitCount(int wantToVisitCount) {
		this.wantToVisitCount = wantToVisitCount;
	}
	public String getCityName() {
		return cityName;
	}
	public void setCityName(String cityName) {
		this.cityName = cityName;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getBestMonth() {
		return bestMonth;
	}
	public void setBestMonth(String bestMonth) {
		this.bestMonth = bestMonth;
	}
	public String getSuitPeople() {
		return suitPeople;
	}
	public void setSuitPeople(String suitPeople) {
		this.suitPeople = suitPeople;
	}
	public int getTourType() {
		return tourType;
	}
	public void setTourType(int tourType) {
		this.tourType = tourType;
	}
	
	
	//添加 toString 方法
	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Park [alreadyVisitCount=").append(alreadyVisitCount)
				.append(", bestMonth=").append(bestMonth).append(", cityName=")
				.append(cityName).append(", parkId=").append(parkId).append(
						", parkIntroduce=").append(parkIntroduce).append(
						", parkName=").append(parkName).append(", photo=")
				.append(photo).append(", suitPeople=").append(suitPeople)
				.append(", tourType=").append(tourType).append(", userId=")
				.append(userId).append(", wantToVisitCount=").append(
						wantToVisitCount).append("]");
		return builder.toString();
	}
	
	
	
	
}
