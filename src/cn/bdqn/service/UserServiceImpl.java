package cn.bdqn.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bdqn.dao.UserMapper;
import cn.bdqn.entity.User;
import cn.bdqn.util.Page;
@Service("userService")
public class UserServiceImpl implements UserService {
	@Autowired
	private UserMapper userMapper;
	public Integer addUser(User user) {
		
		return userMapper.addUser(user);
	}

	public Integer getUserNameCount(String userName) {
		return userMapper.getUserNameCount(userName);
	}

	public User login(User user) {
		return userMapper.login(user);
	}

	public User queryUserByUserName(String userName) {
		return userMapper.queryUserByUserName(userName);
	}

	public Integer updateUser(User user) {
		return userMapper.updateUser(user);
	}

	public Integer updateUserPwd(User user) {
		return userMapper.updateUserPwd(user);
	}

	public void getList(String userName, Integer roleId, Page<User> page) {
		List<User> list=new ArrayList<User>();
		Integer count=userMapper.getCount(userName, roleId);
		if(count>0){
			page.setTotalCount(count);
			Integer start=(page.getPageNo()-1)*page.getPageSize();
			list=userMapper.getList(userName, roleId, start, page.getPageSize());
			page.setList(list);
		}else{
			page.setTotalPageCount(0);
			page.setList(list);
		}
	}

	public Integer addAdmin(User user) {
	
		return userMapper.addAdmin(user);
	}

	public Integer delete(Integer userId) {
		
		return userMapper.delete(userId);
	}

	public Integer updateLock(User user) {
		// TODO Auto-generated method stub
		return userMapper.updateLock(user);
	}


}
