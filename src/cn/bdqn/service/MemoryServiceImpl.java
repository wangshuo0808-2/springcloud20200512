package cn.bdqn.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bdqn.dao.McMapper;
import cn.bdqn.dao.MemoryMapper;
import cn.bdqn.entity.Memory;
import cn.bdqn.util.Page;
@Service("memoryService")
public class MemoryServiceImpl implements MemoryService {
	@Autowired
	private  MemoryMapper memoryMapper;
	@Autowired
	private McMapper mcMapper;
	public Integer delete(Integer travelMemoryId) {
		mcMapper.deleteComment(travelMemoryId);
		return memoryMapper.delete(travelMemoryId);
	}

	public void getList(String title, Page<Memory> page) {
		List<Memory> list=new ArrayList<Memory>();
		//1. 查询符合条件的记录数
		Integer count=memoryMapper.getCount(title);
		if(count>0){
			page.setTotalCount(count);
			Integer start=(page.getPageNo()-1)*page.getPageSize();
			list=memoryMapper.getList(title, start, page.getPageSize());
			page.setList(list);
		}else{
			page.setTotalPageCount(0);
			page.setList(list);
		}	

	}

	public Integer addMemory(Memory memory) {
		return memoryMapper.addMemory(memory);
	}

	public Memory getMemory(Integer travelMemoryId) {
		return memoryMapper.getMemory(travelMemoryId);
	}

	public void getUserNameList(String title,String userName, Page<Memory> page) {
		List<Memory> list=new ArrayList<Memory>();
		//1. 查询符合条件的记录数
		Integer count=memoryMapper.getUserNameCount(title,userName);
		if(count>0){
			page.setTotalCount(count);
			Integer start=(page.getPageNo()-1)*page.getPageSize();
			list=memoryMapper.getUserNameList(title,userName, start, page.getPageSize());
			page.setList(list);
		}else{
			page.setTotalPageCount(0);
			page.setList(list);
		}	
	}

	public Integer updateLock(Memory memory) {
		return memoryMapper.updateLock(memory);
	}

	public Integer getTitleCount(String title) {
		// TODO Auto-generated method stub
		return memoryMapper.getTitleCount(title);
	}

	public Memory getMemoryByTitle(String title) {
		
		return memoryMapper.getMemoryByTitle(title);
	}

	public Integer getTravelMemoryIdByTitle(String title) {
		// TODO Auto-generated method stub
		return memoryMapper.getTravelMemoryIdByTitle(title);
	}

	public void getMemoryList(String title,String memoryType, Page<Memory> page) {
		List<Memory> list=new ArrayList<Memory>();
		//1. 查询符合条件的记录数
		Integer count=memoryMapper.getCountByMemoryType(title,memoryType);
		if(count>0){
			page.setTotalCount(count);
			Integer start=(page.getPageNo()-1)*page.getPageSize();
			list=memoryMapper.getMemoryList(title,memoryType, start, page.getPageSize());
			page.setList(list);
		}else{
			page.setTotalPageCount(0);
			page.setList(list);
		}	
		
	}

}
