package cn.bdqn.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bdqn.dao.ParkMapper;
import cn.bdqn.entity.Park;
import cn.bdqn.util.Page;

@Service("parkService")
public class ParkServiceImpl implements ParkService{
	
	@Autowired
	private ParkMapper parkMapper;
	

	public Integer getCountByParkName(String parkName) {
		return parkMapper.getCountByParkName(parkName);
	}
	
	public Integer addPark(Park park) {
		return parkMapper.addPark(park);
	}

	public Integer delPark(Integer parkId) {
		return parkMapper.delPark(parkId);
	}

	public List<Park> queryAllParks() {
		return parkMapper.queryAllParks();
	}

	public Park queryParkById(Integer parkId) {
		return parkMapper.queryParkById(parkId);
	}

	public Integer updatePark(Park park) {
		return parkMapper.updatePark(park);
	}

	public void queryParksByNameLimit(Page<Park>page,String parkName,Integer tourType) {
		Integer count=parkMapper.getTotalCount(parkName, tourType);
		if(count>0){
			Integer startRow=(page.getPageNo()-1)*page.getPageSize();
			List<Park> parkList=parkMapper.queryParksByNameLimit(startRow, page.getPageSize(), parkName, tourType);
			page.setTotalCount(count);
			page.setList(parkList);
		}else{
			page.setTotalCount(count);
			page.setList(new ArrayList<Park>());
		}
	}

	public void queryParksByNameLimit2(Page<Park> page, String parkName) {
		Integer count=parkMapper.getTotalCount2(parkName);
		if(count>0){
			Integer startRow=(page.getPageNo()-1)*page.getPageSize();
			List<Park> parkList=parkMapper.queryParksByNameLimit2(startRow, page.getPageSize(), parkName);
			page.setTotalCount(count);
			page.setList(parkList);
		}else{
			page.setTotalCount(count);
			page.setList(new ArrayList<Park>());
		}
	}

	public Integer updateAlreadyCount(Integer parkId) {
		return parkMapper.updateAlreadyCount(parkId);
	}

	public Integer updateWantCount(Integer parkId) {
		return parkMapper.updateWantCount(parkId);
	}

	
}
