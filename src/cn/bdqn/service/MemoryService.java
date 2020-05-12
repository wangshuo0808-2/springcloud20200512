package cn.bdqn.service;

import cn.bdqn.entity.Memory;
import cn.bdqn.util.Page;

public interface MemoryService {
	public void getList(String title,Page<Memory> page);//分页
	public Integer delete(Integer travelMemoryId);//删除
	//通过travelMemoryId查询指定用户信息
	public Memory getMemory(Integer travelMemoryId);
	public Integer addMemory(Memory memory);//添加
	public void getUserNameList(String title,String userName,Page<Memory> page);//指定用户分页
	public Integer updateLock(Memory memory);//更新状态
	Integer getTitleCount(String title);//检查标题的唯一性
	Memory getMemoryByTitle(String title);//通过标题查到旅游记忆详情
	public Integer getTravelMemoryIdByTitle(String title);//通过标题查找id
	public void getMemoryList(String title,String memoryType,Page<Memory> page);//指定类型分页
}
