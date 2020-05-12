package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.entity.Park;

public interface ParkMapper {
	public Integer getCountByParkName(String parkName);
	public Integer addPark(Park park);
	public Integer delPark(Integer parkId);
	public Integer updatePark(Park park);
	public List<Park> queryAllParks();
	public Park queryParkById(Integer parkId);
	public List<Park> queryParksByNameLimit
	(@Param("startRow")Integer startRow,@Param("pageSize")Integer pageSize,
	@Param("parkName")String parkName,@Param("tourType")Integer tourType);
	public Integer getTotalCount(@Param("parkName")String parkName,@Param("tourType")Integer tourType);
	public Integer getTotalCount2(@Param("parkName")String parkName);
	public List<Park> queryParksByNameLimit2
	(@Param("startRow")Integer startRow,@Param("pageSize")Integer pageSize,@Param("parkName")String parkName);
	public Integer updateAlreadyCount(Integer parkId);
	public Integer updateWantCount(Integer parkId);
	
}
