package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.entity.Notice;

public interface NoticeMapper {
	 Integer add(Notice notice);//添加
	 Integer getcount(@Param("title")String title);//标题模糊
	 List<Notice> getList(@Param("title")String title,@Param("start")Integer start,@Param("pageSize")Integer pageSize);
	 Notice getNoticeById(@Param("id")Integer id);//查询指定公告
	 Integer getTitleCount(@Param("title")String title);//检查标题的唯一性
	 Integer updateLock(@Param("id")Integer id);//删除
	 Integer update(Notice notice);//修改
}
