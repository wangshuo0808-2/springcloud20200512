package cn.bdqn.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.entity.User;
import cn.bdqn.service.UserService;
import cn.bdqn.util.Page;

@Controller
@RequestMapping("user")
public class MemberController {
	@Autowired
	private UserService userService;
	@ResponseBody
	@RequestMapping(value="add",produces={"application/json;charset=UTF-8"})
	public String add(User user){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=userService.addUser(user);
		if(count>0){
			map.put("row", "success");
		}else{
			map.put("row", "error");
		}
		return JSON.toJSONString(map);
	}
	@ResponseBody
	@RequestMapping(value="add2",produces={"application/json;charset=UTF-8"})
	public String add2(User user){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=userService.addAdmin(user);
		if(count>0){
			map.put("row", "success");
		}else{
			map.put("row", "error");
		}
		return JSON.toJSONString(map);
	}
	
	
	@ResponseBody
	@RequestMapping(value="check",produces={"application/json;charset=UTF-8"})
	public String check(String userName){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=userService.getUserNameCount(userName);
		if(count==0){
			map.put("row", "error");
		}else{
			map.put("row", "success");
		}
		return JSON.toJSONString(map);
	}
	@ResponseBody
	@RequestMapping(value="pwd",produces={"application/json;charset=UTF-8"})
	public String pwd(User user){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=userService.updateUserPwd(user);
		if(count>0){
			map.put("row", "success");
		}else{
			map.put("row", "error");
		}
		return JSON.toJSONString(map);
	}
	@RequestMapping("login")
	public String login(User user,HttpSession session,Model model){
		User loginUser=null;
		loginUser=userService.login(user);
		if(loginUser!=null){
			Integer roleId=loginUser.getRoleId();
			if(roleId==0){
				session.setAttribute("loginUser", loginUser);
				session.setAttribute("userName", loginUser.getUserName());
				return "forward:/notice/list2";
			}else{
				session.setAttribute("loginUser2", loginUser);
				session.setAttribute("userName1", loginUser.getUserName());
				return "/admin/admin_add";
			}
			
		}
		
		model.addAttribute("message","用户名或密码错误");
		return "/user/login/login";
	}
	@ResponseBody
	@RequestMapping(value="update",produces={"application/json;charset=UTF-8"})
	public String update(User user){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=userService.updateUser(user);
		if(count>0){
			map.put("row", "success");
		}else{
			map.put("row", "error");
		}
		return JSON.toJSONString(map);
	}
	/*@RequestMapping("update")
	public String update(User user,HttpSession session){
		userService.updateUser(user);
		return this.detail(user.getUserName(), session);
	}*/
	@RequestMapping("detail")
	public String detail(String userName,HttpSession session){
		User loginUser=null;
		loginUser=userService.queryUserByUserName(userName);
			Integer roleId=loginUser.getRoleId();
			if(roleId==0){
				session.setAttribute("loginUser", loginUser);
				return "/user/user/account_detail";
			}else{
				session.setAttribute("loginUser2", loginUser);
				return "/admin/auser_detail";
			}
	}
	@RequestMapping("detail2")
	public String detail2(String userName,HttpSession session){
		User user=null;
		user=userService.queryUserByUserName(userName);
			session.setAttribute("user", user);
			return "/admin/auser_detail";
		
	}
	@ResponseBody
	@RequestMapping(value="delete",produces={"application/json;charset=UTF-8"})
	public String delete(Integer id){
		/*Integer count=commentService.deleteComment(id);*/
		User user=new User();
		user.setUserId(id);
		Integer count=userService.updateLock(user);
		Map<String,Object> map=new HashMap<String,Object>();
		if(count>0){
			map.put("row", "success");
			//map.put("ron", "删除成功!");
		}else{
			map.put("row", "error");
			//map.put("ron", "删除失败!");
		}
		return JSON.toJSONString(map);
	}
	@RequestMapping("list")
	public String list(String userName,Integer pageNo,Integer roleId,Integer pageSize,Model model){
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=5;
		}
		Page<User> page=new Page<User>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		
		userService.getList(userName, roleId, page);
		model.addAttribute("page", page);
		model.addAttribute("roleId", roleId);
		model.addAttribute("userName2", userName);
		return "/admin/auser_list";
		
	}
	@RequestMapping("logout")
	public String logout(HttpSession session){
		session.removeAttribute("loginUser");
		session.removeAttribute("userName");
//		log.info("调用了UserController类的login方法,返回：comm/login");
		return "forward:/notice/list2";//index.jsp
	}
	
}
