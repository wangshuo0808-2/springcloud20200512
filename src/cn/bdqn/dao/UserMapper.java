package cn.bdqn.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import cn.bdqn.entity.User;

public interface UserMapper {
	User login(User user);//登录
	Integer addUser(User user);//注册
	Integer getUserNameCount(String userName);//检查用户名的唯一性
	Integer updateUser(User user);//修改用户
	User queryUserByUserName(String userName);//通过用户名查看用户详情
	Integer updateUserPwd(User user);//修改密码
	Integer getCount(@Param("userName")String userName,@Param("roleId")Integer roleId);//指定用户数量
	//分页查询
	List<User> getList(@Param("userName")String userName,@Param("roleId")Integer roleId,@Param("start")Integer start,@Param("pageSize")Integer pageSize);
	Integer addAdmin(User user);//添加管理员
	public Integer delete(Integer userId);//删除
	Integer updateLock(User user);//删除
}
