

import java.util.List;

import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import cn.bdqn.entity.Park;
import cn.bdqn.service.ParkService;
import cn.bdqn.util.Page;


public class ParkTest {
	/*
	public Integer addPark(Park park); √
	public Integer delPark(Integer parkId); √
	public Integer updatePark(Park park); √
	public List<Park> queryAllParks(); √
	public Park queryParkById(Integer parkId); √
	public void queryParksByNameLimit(String parkName,Page<Park> page); →→→衍生了新的方法，都已测试通过
	public Integer updateAlreadyCount(Integer parkId); √
	public Integer updateWantCount(Integer parkId); √
	*/
	
	ApplicationContext context=new ClassPathXmlApplicationContext("applicationContext.xml");
	ParkService parkService=(ParkService)context.getBean("parkService");
	
	@Test
	public void getCountByParkName(){
		String parkName="西湖";
		Integer count=parkService.getCountByParkName(parkName);
		if(count==1){
			System.out.println("该景区已存在！");
		}else{
			System.out.println("该景区还未存在，可以创建相应攻略！");
		}
	}
	
	@Test
	public void addTest(){
		Park park=new Park();
		park.setAlreadyVisitCount(100);
		park.setWantToVisitCount(200);
		park.setCityName("桂林");
		park.setParkName("漓江");
		park.setParkIntroduce("桂林位于广西壮族自治区，在“湘西走廊”的南端，自古享有“山水甲天下”之美誉，" +
							  "以山水、人情、风俗和悠闲舒适的生活而闻名。桂林风景秀丽，有以漓江风光和喀斯特地貌为代表的山水景观：" +
							  "这里的山，平地拔起，千姿百态；漓江的水，蜿蜒曲折，明洁如镜。此外，桂林还有壮、瑶、苗、侗等十多个少数民族独特的民俗风情文化，" +
							  "为这片土地更添万千风情。桂林是中国乃至世界重要的旅游城市，是中国著名的风景游览城市和历史文化名城，是最适宜自助游的城市之一。");
		Integer count=parkService.addPark(park);
		System.out.println(count>0?"添加成功！":"添加失败！");
	}
	
	@Test
	public void delTest(){
		Integer parkId=5;
		Integer count=parkService.delPark(parkId);
		System.out.println(count>0?"删除成功！":"删除失败！");
	}
	
	@Test
	public void queryAllTest(){
		List<Park> parkList=parkService.queryAllParks();
		if(parkList!=null){
			for (Park park : parkList) {
				System.out.println(park);
			}
		}
	}
	
	@Test
	public void queryParkByIdTest(){
		Integer parkId=1;
		Park park=parkService.queryParkById(parkId);
		System.out.println(park);
	}
	
	@Test
	public void updateTest(){
		Park park=new Park();
		park.setAlreadyVisitCount(88);
		park.setWantToVisitCount(88);
		park.setCityName("88");
		park.setParkIntroduce("88");
		park.setParkName("88");
		park.setParkId(7);
		Integer count=parkService.updatePark(park);
		System.out.println(count>0?"修改成功！":"修改失败！");
	}
	
	@Test
	public void queryParksByNameLimitTest(){
		Page<Park>page=new Page<Park>();
		page.setPageSize(5);
		page.setPageNo(1);
		String parkName="蜈支";
		Integer tourType=0;
		parkService.queryParksByNameLimit(page, parkName, tourType);
		List<Park> parkList=page.getList();
		if(parkList!=null){
			for (Park park : parkList) {
				System.out.println(park);
			}
		}
		System.out.println("当前页是："+page.getPageNo());
		System.out.println("页容量是："+page.getPageSize());
		System.out.println("查询结果总数是："+page.getTotalCount());
		System.out.println("总页数是："+page.getTotalPageCount());
	}
	
	@Test
	public void queryParksByNameLimitTest2(){
		Page<Park>page=new Page<Park>();
		page.setPageSize(5);
		page.setPageNo(1);
		String parkName="蜈支";
		parkService.queryParksByNameLimit2(page, parkName);
		List<Park> parkList=page.getList();
		if(parkList!=null){
			for (Park park : parkList) {
				System.out.println(park);
			}
		}
		System.out.println("当前页是："+page.getPageNo());
		System.out.println("页容量是："+page.getPageSize());
		System.out.println("查询结果总数是："+page.getTotalCount());
		System.out.println("总页数是："+page.getTotalPageCount());
	}
	
	@Test
	public void updateAlreadyCount(){
		Integer parkId=31;
		Integer count=parkService.updateAlreadyCount(parkId);
		if(count>0){
			System.out.println("修改已去数+1");
		}else{
			System.out.println("修改失败！");
		}
	}
	
	@Test
	public void updateWantCount(){
		Integer parkId=31;
		Integer count=parkService.updateWantCount(parkId);
		if(count>0){
			System.out.println("修改想去数+1");
		}else{
			System.out.println("修改失败！");
		}
	}
}
