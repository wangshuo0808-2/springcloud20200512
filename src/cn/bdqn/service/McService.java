package cn.bdqn.service;



import cn.bdqn.entity.Mc;
import cn.bdqn.util.Page;

public interface McService {
	Integer add(Mc mc);//添加
	public void getList(Integer travelMemoryId,Page<Mc> page);//分页
}
