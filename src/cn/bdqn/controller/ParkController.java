package cn.bdqn.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.alibaba.fastjson.JSON;

import cn.bdqn.entity.CasingClass;
import cn.bdqn.entity.Park;
import cn.bdqn.service.ParkService;
import cn.bdqn.util.Page;

@Controller
@RequestMapping("park")
public class ParkController {
	@Autowired
	private ParkService parkService;
	
	@RequestMapping("queryAllParks")
	public String queryAllParks(Model model){
		List<Park> parkList=parkService.queryAllParks();
		//CasingClass casingClass=new CasingClass();
		//casingClass.setParkList(parkList);
		//model.addAttribute("casingClass", casingClass);
		model.addAttribute("parkList",parkList);
		return "user/strategy/strategy";
	}
	
	@RequestMapping("queryParkById")
	public ModelAndView queryParkById(Integer parkId){
		ModelAndView mav=new ModelAndView();
		Park park=parkService.queryParkById(parkId);
		mav.addObject("park", park);
		mav.setViewName("user/strategy/strategy_detail");
		return mav;
	}
	
	@RequestMapping("showParkFrame")
	public String showParkFrame(String parkName,Integer tourType,Integer pageNo,Model model){
		//System.out.println(parkName);
		Page<Park> page=new Page<Park>();
		if(pageNo==null){
			pageNo=1;
		}
		page.setPageNo(pageNo);
		page.setPageSize(3);
		parkService.queryParksByNameLimit(page, parkName, tourType);
		model.addAttribute("page", page);
		model.addAttribute("tourType",tourType);
		model.addAttribute("parkName",parkName);
		return "user/strategy/strategy_more";
	}
	
	@RequestMapping("showParkFrame2")
	public String showParkFrame2(String parkName,Integer tourType,Integer pageNo,Model model){
		System.out.println(parkName);
		System.out.println(tourType);
		Page<Park> page=new Page<Park>();
		if(pageNo==null){
			pageNo=1;
		}
		page.setPageNo(pageNo);
		page.setPageSize(3);
		parkService.queryParksByNameLimit2(page, parkName);
		model.addAttribute("page", page);
		model.addAttribute("parkName",parkName);
		return "user/strategy/strategy_more2";
	}
	
	@ResponseBody
	@RequestMapping(value="updateAlreadyCount",produces={"application/json;charset=UTF-8"})
	public String updateAlreadyCount(Integer parkId,Integer alreadyVisitCount){
		Map<String,Object>map=new HashMap<String,Object>();
		Integer count=parkService.updateAlreadyCount(parkId);
		if(count>0){
			map.put("updateInfo1","success");
			map.put("count",alreadyVisitCount+1);
			return JSON.toJSONString(map);
		}else{
			map.put("updateInfo1","fail");
			return JSON.toJSONString(map);
		}
	}
	
	@ResponseBody
	@RequestMapping(value="updateWantCount",produces={"application/json;charset=UTF-8"})
	public String updateWantCount(Integer parkId,Integer wantToVisitCount){
		Map<String,Object>map=new HashMap<String,Object>();
		Integer count=parkService.updateWantCount(parkId);
		if(count>0){
			map.put("updateInfo2","success");
			map.put("count",wantToVisitCount+1);
			return JSON.toJSONString(map);
		}else{
			map.put("updateInfo2","fail");
			return JSON.toJSONString(map);
		}
	}

	
	
}
