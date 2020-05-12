package cn.bdqn.controller;


import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class UserController {
	//主页
	@RequestMapping("toindex")
	public String toindex(String userName,Model model){
		model.addAttribute("userName", userName);
		return "index";
	}
	//friend
	@RequestMapping("touser_basic")
	public String touser_basic(){
		return "/user/friend/user_basic";
	}
	@RequestMapping("touser_memory")
	public String touser_memory(){
		return "/user/friend/user_memory";
	}
	@RequestMapping("to_partner")
	public String topartner(){
		return "/user/friend/user_partner";
	}
	//login
	@RequestMapping("tologin")
	public String tologin(){
		return "/user/login/login";
	}
	@RequestMapping("toregister")
	public String toregister(){
		return "/user/login/register";
	}
	//memory
	@RequestMapping("tomemory_detail")
	public String tomemory_detail(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/memory/memory_detail";
	}
	@RequestMapping("tomemory_list1")
	public String tomemory_list1(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/memory/memory_list";
	}
	@RequestMapping("tomemory_list")
	public String tomemory_list(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/user/memory_list";
	}
	@RequestMapping("tomemory_search")
	public String tomemory_search(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/memory/memory_search";
	}
	@RequestMapping("tomemory")
	public String tomemory(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/memory/memory";
	}
	//notice
	@RequestMapping("toapply")
	public String toapply(){
		return "/user/notice/allpy";
	}
	@RequestMapping("tomessage_send")
	public String tomessage_send(){
		return "/user/notice/message_send";
	}
	@RequestMapping("tomessage")
	public String tomessage(){
		return "/user/notice/message";
	}
	//strategy
	@RequestMapping("tostrategy_detail")
	public String tostrategy_detail(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/strategy/strategy_detail";
	}
	@RequestMapping("tostrategy")
	public String tostrategy(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/strategy/strategy";
	}
	//traveller
	@RequestMapping("totraveller")
	public String totraveller(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/traveller/traveller";
	}
	@RequestMapping("totraveller_detail")
	public String totraveller_detail(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/traveller/traveller_detail";
	}
	@RequestMapping("totraveller_search")
	public String totraveller_search(){
		return "/user/traveller/traveller_search";
	}
	//user
	@RequestMapping("toaccount_detail")
	public String toaccount_detail(){
		return "/user/user/account_detail";
	}
	@RequestMapping("tofriend_search")
	public String tofriend_search(){
		return "/user/user/friend_search";
	}
	@RequestMapping("tofriend")
	public String tofriend(){
		return "/user/user/friend";
	}
	@RequestMapping("toimg_change")
	public String toimg_change(){
		return "/user/user/img_change";
	}
	@RequestMapping("touser_memory_add")
	public String touser_memory_add(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/user/memory_add";
	}
	@RequestMapping("topassword_change")
	public String topassword_change(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/user/password_change";
	}
	@RequestMapping("tostate_friend")
	public String tostate_friend(){
		return "/user/user/state_friend";
	}
	@RequestMapping("tostate")
	public String tostate(){
		return "/user/user/state";
	}
	@RequestMapping("touser_travel_add")
	public String touser_travel(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/user/travel_add";
	}
	@RequestMapping("touser_travel_list")
	public String touser_travel_list(String userName,Model model){
		model.addAttribute("userName", userName);
		return "/user/user/travel_list";
	}
	
}
