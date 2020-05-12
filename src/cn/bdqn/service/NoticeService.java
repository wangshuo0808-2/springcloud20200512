package cn.bdqn.service;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.entity.Notice;
import cn.bdqn.util.Page;

public interface NoticeService {
	Integer add(Notice notice);//添加
	Notice getNoticeById(@Param("id")Integer id);//查询指定公告
	 Integer getTitleCount(@Param("title")String title);//检查标题的唯一性
	 Integer updateLock(@Param("id")Integer id);//删除
	 Integer update(Notice notice);//修改
	 public void getList(String title,Page<Notice> page);//分页
}
