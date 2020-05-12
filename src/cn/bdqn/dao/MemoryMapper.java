package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.entity.Memory;

public interface MemoryMapper {
		//查询满足条件的记录数
		public Integer getCount(@Param("title")String title);
		//查询满足条件的旅游记忆信息
		public  List<Memory> getList(@Param("title")String title,@Param("start")Integer start,@Param("pageSize")Integer pageSize);
		public Integer delete(Integer travelMemoryId);//删除
		public Integer getUserNameCount(@Param("title")String title,@Param("userName")String userName);//通过用户名查询满足条件的记录数
		//通过用户名查询满足条件的记录数
		public  List<Memory> getUserNameList(@Param("title")String title,@Param("userName")String userName,@Param("start")Integer start,@Param("pageSize")Integer pageSize);
		//通过travelMemoryId查询指定用户信息
		public Memory getMemory(Integer travelMemoryId);//查询详情
		public Integer addMemory(Memory memory);//添加
		public Integer updateLock(Memory memory);//更新状态
		Integer getTitleCount(String title);//检查标题的唯一性
		Memory getMemoryByTitle(String title);//通过标题查到旅游记忆详情
		public Integer getTravelMemoryIdByTitle(String title);//通过标题查找id
		Integer getCountByMemoryType(@Param("title")String title,@Param("memoryType")String memoryType);//获得类型的数量
		List<Memory> getMemoryList(@Param("title")String title,@Param("memoryType")String memoryType,@Param("start")Integer start,@Param("pageSize")Integer pageSize);//分页
		
}
