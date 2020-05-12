

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.bdqn.entity.Memory;
import cn.bdqn.service.MemoryService;
import cn.bdqn.util.Page;


public class MemoryServiceTest {
	@Test
	public void getCountTest(){
		String title="中国";
		Page<Memory> page=new Page<Memory>();
		page.setPageNo(1);
		page.setPageSize(5);
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		MemoryService memoryService=(MemoryService)context.getBean("memoryService");
		memoryService.getList(title, page);
		System.out.println("共"+page.getTotalCount()+"条记录");
		System.out.println("共"+page.getTotalPageCount()+"页");
		System.out.println("当前："+page.getPageNo()+"页");
		List<Memory> list=page.getList();
		for (Memory memory : list) {
			System.out.println(memory.getTitle());
		}
	}
	@Test
	public void deleteTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		MemoryService memoryService=(MemoryService)context.getBean("memoryService");
		Integer count=memoryService.delete(1);
		System.out.println(count>0?"删除成功":"删除失败");
	}
	@Test
	public void addMemoryTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		MemoryService memoryService=(MemoryService)context.getBean("memoryService");
		Memory memory=new Memory("1","1","1","1","1","2014-05-06 07:11");
		Integer count=memoryService.addMemory(memory);
		System.out.println(count>0?"添加成功":"添加失败");
		
	}
	@Test
	public void getUserNameTest(){
		String userName="张三";
		String title="北京";
		Page<Memory> page=new Page<Memory>();
		page.setPageNo(1);
		page.setPageSize(5);
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		MemoryService memoryService=(MemoryService)context.getBean("memoryService");
		memoryService.getUserNameList(title,userName, page);
		System.out.println("共"+page.getTotalCount()+"项记录");
		System.out.println("共"+page.getTotalPageCount()+"页");
		System.out.println("当前:"+page.getTotalPageCount()+"页");
		List<Memory> list=page.getList();
		for (Memory memory : list) {
			System.out.println(memory.getUserName());
		}
	}
	@Test
	public void getMemoryTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		MemoryService memoryService=(MemoryService)context.getBean("memoryService");
		Memory memory=memoryService.getMemory(1);
		System.out.println(memory);
	}
	@Test
	public void updateLockTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		MemoryService memoryService=(MemoryService)context.getBean("memoryService");
		Memory memory=new Memory();
		memory.setTravelMemoryId(1);
		Integer count=memoryService.updateLock(memory);
		System.out.println(count>0?"更新成功":"更新失败");
	}
	@Test
	public void MemoryTest(){
		ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
		MemoryService memoryService=(MemoryService)context.getBean("memoryService");
		Page<Memory> page=new Page<Memory>();
		page.setPageNo(1);
		page.setPageSize(5);
		String title="北京";
		String memoryType="面朝大海";
		memoryService.getMemoryList(title,memoryType, page);
		List<Memory> list=page.getList();
		if(list!=null){
			for (Memory memory : list) {
				System.out.println(memory);
			}
		}
	}
}
