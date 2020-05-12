

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.bdqn.entity.User;
import cn.bdqn.service.UserService;
import cn.bdqn.util.Page;


public class UserServiceTest {
	@Test
	public void loginTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService=(UserService)context.getBean("userService");
		User user=new User();
		user.setUserName("张三");
		user.setUserPwd("777777");
		User loginUser=userService.login(user);
		if(loginUser!=null){
			System.out.println("欢迎:"+loginUser.getUserName()+"登录");
		}
	}
	@Test
	public void addUserTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService=(UserService)context.getBean("userService");
		User user=new User();
		user.setUserName("王五");
		user.setUserPwd("1");
		user.setEmail("wangwu@163.com");
		Integer count=userService.addUser(user);
		System.out.println(count>0?"添加成功":"添加失败");
	}
	@Test
	public void getUserNameTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService=(UserService)context.getBean("userService");
		String userName="张三";
		Integer count=userService.getUserNameCount(userName);
		System.out.println(count);
	}
	@Test
	public void updateUserTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService=(UserService)context.getBean("userService");
		User user=new User();
		//user.setUserName("周五");
		/*user.setBirthday("2019-02-12 09:08");*/
		user.setQQ("222222");
		user.setUserId(6);
		Integer count=userService.updateUser(user);
		System.out.println(count>0?"修改成功":"修改失败");
	}
	@Test
	public void queryUserByUserNameTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService=(UserService)context.getBean("userService");
		String userName="张三";
		User user=userService.queryUserByUserName(userName);
		if(user!=null){
			System.out.println(user);
		}
	}
	@Test
	public void updateUserPwdTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService=(UserService)context.getBean("userService");
		User user=new User();
		user.setUserName("张三");
		user.setUserPwd("888888");
		Integer count=userService.updateUserPwd(user);
		System.out.println(count>0?"修改成功":"修改失败");
	}
	@Test
	public void getListTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		UserService userService=(UserService)context.getBean("userService");
		Page<User> page=new Page<User>();
		String userName="张";
		Integer roleId=0;
		page.setPageNo(1);
		page.setPageSize(5);
		userService.getList(userName, roleId, page);
		System.out.println("共"+page.getTotalCount()+"项记录");
		System.out.println("共"+page.getTotalPageCount()+"页");
		System.out.println("当前"+page.getPageNo()+"页");
		List<User> list=page.getList();
		for (User user : list) {
			System.out.println(user.getUserName());
		}
		
	}
}
