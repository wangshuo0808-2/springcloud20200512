package cn.bdqn.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.entity.Park;
import cn.bdqn.util.Page;

public interface ParkService {
	public Integer getCountByParkName(String parkName);
	public Integer addPark(Park park);
	public Integer delPark(Integer parkId);
	public Integer updatePark(Park park);
	public List<Park> queryAllParks();
	public Park queryParkById(Integer parkId);
	public void queryParksByNameLimit(Page<Park>page,String parkName,Integer tourType);
	public void queryParksByNameLimit2(Page<Park>page,String parkName);
	public Integer updateAlreadyCount(Integer parkId);
	public Integer updateWantCount(Integer parkId);

}
