package cn.bdqn.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bdqn.dao.McMapper;
import cn.bdqn.entity.Mc;
import cn.bdqn.util.Page;
@Service("McService")
public class McServiceImpl implements McService{
@Autowired
private McMapper mcMapper;
	public Integer add(Mc mc) {
		return mcMapper.add(mc);
	}
	public void getList(Integer travelMemoryId, Page<Mc> page) {
		List<Mc> list=new ArrayList<Mc>();
		Integer count=mcMapper.getCount(travelMemoryId);
		if(count>0){
			page.setTotalCount(count);
			Integer start=(page.getPageNo()-1)*(page.getPageSize());
			list=mcMapper.getList(travelMemoryId, start,page.getPageSize());
			page.setList(list);
		}else{
			page.setTotalPageCount(0);
			page.setList(list);
		}
		
	}

	

}
