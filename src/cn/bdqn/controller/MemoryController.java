package cn.bdqn.controller;

import java.io.File;
import java.io.IOException;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.mail.Store;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;

import cn.bdqn.entity.Mc;
import cn.bdqn.entity.Memory;
import cn.bdqn.entity.User;
import cn.bdqn.service.McService;
import cn.bdqn.service.MemoryService;
import cn.bdqn.util.Page;

@Controller
@RequestMapping("memory")
public class MemoryController {
	@Autowired
	private MemoryService memoryService;
	@Autowired
	private McService mcService;
	@RequestMapping("list")
	public String list(String title,Integer pageNo,Integer pageSize,Model model){
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=5;
		}
		Page<Memory> page=new Page<Memory>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		memoryService.getList(title, page);
		model.addAttribute("page", page);
		model.addAttribute("title", title);
		return "/admin/travel_list";
	}
	@RequestMapping("list1")
	public String list1(String title,Integer pageNo,Integer pageSize,Model model){
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=5;
		}
		if(title.equals("搜索旅游记忆")){
			title=null;
		}
		Page<Memory> page=new Page<Memory>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		memoryService.getList(title, page);
		model.addAttribute("page", page);
		model.addAttribute("title", title);
		return "/user/memory/memory_search";
	}
	@RequestMapping("list3")
	public String list3(String title,String memoryType,Integer pageNo,Integer pageSize,Model model){
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=3;
		}
		Page<Memory> page=new Page<Memory>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		memoryService.getMemoryList(title,memoryType, page);
		model.addAttribute("page", page);
		model.addAttribute("memoryType", memoryType);
		model.addAttribute("title", title);
		return "/user/memory/memory_list";
	}
	@ResponseBody
	@RequestMapping(value="check",produces={"application/json;charset=UTF-8"})
	public String check(String title){
		Map<String,Object> map=new HashMap<String,Object>();
		Integer count=memoryService.getTitleCount(title);
		if(count==0){
			map.put("row", "error");
		}else{
			map.put("row", "success");
		}
		return JSON.toJSONString(map);
	}
	@RequestMapping("list2")
	public String list2(String title,String userName,Integer pageNo,Integer pageSize,Model model){
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=4;
		}
		Page<Memory> page=new Page<Memory>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		memoryService.getUserNameList(title,userName, page);
		model.addAttribute("userName", userName);
		model.addAttribute("title", title);
		model.addAttribute("page", page);
		return "/user/user/memory_list";
	}
	@ResponseBody
	@RequestMapping(value="delete",produces={"application/json;charset=UTF-8"})
	public String delete(Integer id){
		/*Integer count=commentService.deleteComment(id);*/
		Memory memory=new Memory();
		memory.setTravelMemoryId(id);
		Integer count=memoryService.updateLock(memory);
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
	@ResponseBody
	@RequestMapping(value="delete1",produces={"application/json;charset=UTF-8"})
	public String delete1(Integer id){
		/*Integer count=commentService.deleteComment(id);*/
		Memory memory=new Memory();
		memory.setTravelMemoryId(id);
		Integer count=memoryService.delete(id);
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
	@RequestMapping("detail")
	public String detail(Integer id,HttpSession session){
		Memory memory=memoryService.getMemory(id);
			session.setAttribute("memory", memory);
			return "/admin/travel_detail";
		
	}
	@RequestMapping("detail2")
	public String detail2(Integer id,Integer pageNo,Integer pageSize,Model model){
		Memory memory=memoryService.getMemory(id);
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=4;
		}
		Page<Mc> page=new Page<Mc>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		mcService.getList(id, page);
		//model.addAttribute("userName", userName);
		model.addAttribute("page", page);
		model.addAttribute("id", id);
		model.addAttribute("m", memory);
		return "/user/memory/memory_detail";
		
	}
	@RequestMapping("comment")
	public String add(Mc mc,Integer pageNo,Integer pageSize,Model model){
		mc.setCommentTime(new Date());
		mc.getTravelMemoryId();
		mcService.add(mc);
		return this.detail2(mc.getTravelMemoryId(), pageNo, pageSize, model);
	}
	@RequestMapping("detail3")
	public String detail3(String title,Integer pageNo,Integer pageSize,Model model){
		Memory memory=memoryService.getMemoryByTitle(title);
		Integer id=memoryService.getTravelMemoryIdByTitle(title);
		if(pageNo==null){
			pageNo=1;
		}
		if(pageSize==null){
			pageSize=4;
		}
		Page<Mc> page=new Page<Mc>();
		page.setPageNo(pageNo);
		page.setPageSize(pageSize);
		mcService.getList(id, page);
		//model.addAttribute("userName", userName);
		model.addAttribute("page", page);
		model.addAttribute("id", id);
		model.addAttribute("m", memory);
		return "/user/memory/memory_detail";
		
	}
	@RequestMapping("add")
    public String fileUpload(HttpServletRequest request,Memory memory, MultipartFile file,Model model ) throws IOException {
		System.out.println(request.getParameter("name"));
		//保存数据库的路径
		  String sqlPath = null; 
		  //定义文件保存的本地路径
		  String localPath="D:\\File\\";
	      //定义 文件名
	      String filename=null;  
	      if(!memory.getFile().isEmpty()){  
	          //生成uuid作为文件名称  
	          String uuid = UUID.randomUUID().toString().replaceAll("-","");  
	          //获得文件类型（可以判断如果不是图片，禁止上传）  
	          String contentType=memory.getFile().getContentType();  
	          //获得文件后缀名 
	          String suffixName=contentType.substring(contentType.indexOf("/")+1);
	          //得到 文件名
	          filename=uuid+"."+suffixName; 
	          System.out.println(filename);
	          //文件保存路径
	          memory.getFile().transferTo(new File(localPath+filename));  
	      }
	      //把图片的相对路径保存至数据库
	      sqlPath = "/images/"+filename;
	      System.out.println(sqlPath);
	      memory.setPhoto(sqlPath);
		
	      memoryService.addMemory(memory);
	      //model.addAttribute("user", user);
		  return "forward:/memory/list2";


        //product.setPimage(newFileName);
        
        /**
         * 保存商品
         */
       // productService.save(product);
        //return "redirect:/list.do"; 
		  /* if(!memory.getFile().isEmpty()){
			 //使用UUID重命名图片 避免重复
	        String name = UUID.randomUUID().toString().replaceAll("-", "");
	      //获取文件扩展名
	        String ext = FilenameUtils.getExtension(file.getOriginalFilename());
	      //设置图片上传路径
	        String url = request.getSession().getServletContext().getRealPath("/upload");
	      //以绝对路径保存重命名后的图片
	        file.transferTo(new File(url + "/" + name + "." + ext));
	      //把图片路径存到数据库
	        memory.setPhoto("http://localhost:8080/" + "upload/" + name + "." + ext);}*/
	        //给状态码设置默认值
	        //storeIn.setStatus(0);
    }
}
