package cn.bdqn.controller;

import java.util.Date;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSON;

import cn.bdqn.entity.Memory;
import cn.bdqn.entity.Notice;
import cn.bdqn.entity.User;
import cn.bdqn.service.NoticeService;
import cn.bdqn.util.Page;

@Controller
@RequestMapping("notice")
public class NoticeController {
	@Autowired
	private NoticeService noticeService;
	
	@RequestMapping(value="add")
	public String add(Notice notice){
		//Map<String,Object> map=new HashMap<String,Object>();
		notice.setReleaseTime(new Date());
		noticeService.add(notice);
		return "redirect:/notice/list";
	}
	@ResponseBody
	@RequestMapping(value="check",produces={"application/json;charset=UTF-8"})
	public String check(String title){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=noticeService.getTitleCount(title);
		if(count==0){
			map.put("row", "error");
		}else{
			map.put("row", "success");
		}
		return JSON.toJSONString(map);
	}
	@ResponseBody
	@RequestMapping(value="update",produces={"application/json;charset=UTF-8"})
	public String update(Notice notice){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=noticeService.update(notice);
		if(count>0){
			map.put("row", "success");
		}else{
			map.put("row", "error");
		}
		return JSON.toJSONString(map);
	}
	@RequestMapping("list")
	public String list(String title,Integer pageNo,Integer pageSize,Model model){
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=5;
		}
		Page<Notice> page=new Page<Notice>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		noticeService.getList(title, page);
		model.addAttribute("page", page);
		model.addAttribute("title", title);
		return "/admin/inform_list";
	}
	@RequestMapping("list2")
	public String list2(String title,Integer pageNo,Integer pageSize,Model model){
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=1;
		}
		Page<Notice> page=new Page<Notice>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		noticeService.getList(title, page);
		model.addAttribute("page", page);
		model.addAttribute("title", title);
		return "index";
	}
	@RequestMapping("detail")
	public String detail(Integer id,Model model){
		Notice notice=noticeService.getNoticeById(id);
		model.addAttribute("notice", notice);
		return "/admin/inform_edit";
		
	}
	@ResponseBody
	@RequestMapping(value="delete",produces={"application/json;charset=UTF-8"})
	public String delete(Integer id){
		Notice notice=new Notice();
		notice.setId(id);
		Integer count=noticeService.updateLock(id);
		Map<String,Object> map=new HashMap<String,Object>();
		if(count>0){
			map.put("row", "success");
		}else{
			map.put("row", "error");
		}
		return JSON.toJSONString(map);
	}
}
