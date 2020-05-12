package cn.bdqn.controller;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import cn.bdqn.entity.Park;
import cn.bdqn.service.ParkService;

@Controller
public class AdminController {
	@Autowired
	private ParkService parkService;
	@RequestMapping("toadmin_add")
	public String toadmin_add(){
		return "/admin/admin_add";
	}
	@RequestMapping("toadmin_header")
	public String toadmin_header(){
		return "/admin/admin_header";	
	}	
	@RequestMapping("toadmin_left")
	public String toadmin_lift(){
		return "/admin/admin_left";
	}
	@RequestMapping("toauser_detail")
	public String toauser_detail(){
		return "/admin/auser_detail";
	}
	@RequestMapping("toauser_list")
	public String toauser_list(){
		return "/admin/auser_list";
	}
	@RequestMapping("toinform_add")
	public String toinform_add(){
		return "/admin/inform_add";
	}
	@RequestMapping("toinform_edit")
	public String toinform_edit(){
		return "/admin/inform_edit";
	}
	@RequestMapping("toinform_list")
	public String toinform_list(){
		return "/admin/inform_list";
	}
	@RequestMapping("topt_detail")
	public String topt_detail(){
		return "/admin/pt_detail";
	}
	@RequestMapping("topt_list")
	public String topt_list(){
		return "/admin/pt_list";
	}
	@RequestMapping("tostrategy_add")
	public String tostrategy_add(){
		return "/admin/strategy_add";
	}
	@RequestMapping("tostrategy_edit")
	public String tostrategy_edit(){
		return "/admin/strategy_edit";
	}
	@RequestMapping("tostrategy_list")
	public String tostrategy_list(){
		return "/admin/strategy_list";
	}
	@RequestMapping("totravel_detail")
	public String totravel_detail(){
		return "/admin/travel_detail";
	}
	@RequestMapping("totravel_list")
	public String totravel_list(){
		return "/admin/travel_list";
	}
	/*@RequestMapping("tostrategy_add")
	public String tostrategy_add(){
		return "/admin/strategy_add";
	}*/
	
	@ResponseBody
	@RequestMapping(value="checkParkName",method=RequestMethod.GET,produces={"application/json;charset=UTF-8"})
	public String checkParkName(String parkName){
		Map<String,String>map=new HashMap<String,String>();
		Integer count=parkService.getCountByParkName(parkName);
		if(count==1){
			map.put("checkNameInfo","wrong");
			return JSON.toJSONString(map);
		}else{
			map.put("checkNameInfo","right");
			return JSON.toJSONString(map);
		}
	}
	
	
	@RequestMapping("addPark")
	public String addPark(@RequestParam("singleFile")MultipartFile file,Park park) throws IOException{
		if(!file.isEmpty()){
			String targPath="C:/Users/hp/Workspaces/MyEclipse 8.6/Travel/WebRoot/statics/images/images_user/";
			File tempFile=new File(targPath+file.getOriginalFilename());
			file.transferTo(tempFile);
			park.setPhoto(file.getOriginalFilename());
		}
		Map<String,String>map=new HashMap<String,String>();
		Integer count=parkService.addPark(park);
		if(count>0){
			map.put("addParkInfo","success");
			//跳转到管理员页面的景区管理相应页面
			return "forward:/queryParksList";
		}else{
			map.put("addParkInfo", "fail");
			//保留在当前页面
			return "/admin/strategy_add";
		}
	}
	
	
	@RequestMapping("queryParksList")
	public ModelAndView queryParksList(String delParkInfo){
		System.out.println(delParkInfo);
		ModelAndView mav=new ModelAndView();
		List<Park> parkList=parkService.queryAllParks();
		mav.addObject("parkList",parkList);
		if(delParkInfo!=null){
			mav.addObject("delParkInfo",delParkInfo);
		}
		mav.setViewName("/admin/strategy_list");
		return mav;	
	}

	/*@ResponseBody
	@RequestMapping(value="delPark",method=RequestMethod.GET,produces={"application/json;charset=UTF-8"})
	public String delPark(Integer parkId){
		Map<String,String> map=new HashMap<String,String>();
		Integer count=parkService.delPark(parkId);
		if(count>0){
			map.put("delParkInfo","success");
			return JSON.toJSONString(map);
		}else{
			map.put("delParkInfo","fail");
			return JSON.toJSONString(map);
		}
	}*/
	
	@RequestMapping("delPark")
	public ModelAndView delPark(Integer parkId){
		ModelAndView mav=new ModelAndView();
		Integer count=parkService.delPark(parkId);
		if(count>0){
			mav.addObject("delParkInfo","success");
			mav.setViewName("redirect:/queryParksList");
			return mav;
		}else{
			mav.addObject("delParkInfo","fail");
			mav.setViewName("redirect:/queryParksList");
			return mav;
		}
	}

	
	/*@RequestMapping("tostrategy_edit")
	public String tostrategy_edit(Integer parkId,Model model){
		model.addAttribute("parkId",parkId);
		return "/admin/strategy_edit";
	}*/
	
	@RequestMapping("upshowParkById")
	public ModelAndView upshowParkById(Integer parkId){
		ModelAndView mav=new ModelAndView();
		Park park=parkService.queryParkById(parkId);
		mav.addObject("park", park);
		mav.setViewName("/admin/strategy_edit");
		return mav;
	}
	
	@RequestMapping("updateParkById")
	public String updateParkById(@RequestParam("singleFile")MultipartFile file,Park park) throws IOException{
		Map<String,String> map=new HashMap<String,String>();
		if(!file.isEmpty()){
			String targPath="C:/Users/hp/Workspaces/MyEclipse 8.6/Travel/WebRoot/statics/images/images_user/";
			File tempFile=new File(targPath+file.getOriginalFilename());
			file.transferTo(tempFile);
			park.setPhoto(file.getOriginalFilename());
		}
		Integer count=parkService.updatePark(park);
		if(count>0){
			map.put("updateInfo", "success");
			return "forward:/queryParksList";
		}else{
			map.put("updateInfo", "fail");
			return "forward:/queryParksList";
		}
	}
	
/*	@RequestMapping("tostrategy_list")
	public String tostrategy_list(){
		return "/admin/strategy_list";
	}*/
}
