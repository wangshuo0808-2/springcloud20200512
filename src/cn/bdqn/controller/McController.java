package cn.bdqn.controller;

import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


import cn.bdqn.entity.Mc;
import cn.bdqn.entity.Memory;
import cn.bdqn.service.McService;
import cn.bdqn.util.Page;


@Controller
@RequestMapping("comment")
public class McController {
@Autowired
private McService mcService;
@RequestMapping("tolist")
//查看评论列表吧
public String tolist(Integer travelMemoryId,Integer pageNo,Integer pageSize,Model model){
	if(pageNo==null){
		pageNo=1;
	}
	if(pageSize==null){
		pageSize=4;
	}
	Page<Mc> page=new Page<Mc>();
	page.setPageNo(pageNo);
	page.setPageSize(pageSize);
	mcService.getList(travelMemoryId, page);
	//model.addAttribute("userName", userName);
	model.addAttribute("page", page);
	return "/user/memory/memory_detail";
}
@RequestMapping("add")
public String add(Mc mc){
	mc.setCommentTime(new Date());
	mcService.add(mc);
	return "redirect:/memory/detail2";
}
}
