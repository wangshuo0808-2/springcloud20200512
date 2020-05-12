package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;


import cn.bdqn.entity.Mc;







public interface McMapper {
	Integer getCount(@Param("travelMemoryId")Integer travelMemoryId);//查出旅游记忆的id数量
	List<Mc> getList(@Param("travelMemoryId")Integer travelMemoryId,@Param("start")Integer start,@Param("pageSize")Integer pageSize);//分页查询
	Integer add(Mc mc);//添加
	Integer deleteComment(Integer travelMemoryId);//删除
}
