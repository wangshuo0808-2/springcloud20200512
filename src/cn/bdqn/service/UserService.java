package cn.bdqn.service;

import cn.bdqn.entity.User;
import cn.bdqn.util.Page;

public interface UserService {
	User login(User user);//登录
	Integer addUser(User user);//注册
	Integer getUserNameCount(String userName);//检查用户名的唯一性
	Integer updateUser(User user);//修改用户
	User queryUserByUserName(String userName);//通过用户名查看用户详情
	Integer updateUserPwd(User user);//修改密码
	public void getList(String userName,Integer roleId,Page<User> page);
	Integer addAdmin(User user);//添加管理员
	public Integer delete(Integer userId);//删除
	Integer updateLock(User user);//删除
	
}
