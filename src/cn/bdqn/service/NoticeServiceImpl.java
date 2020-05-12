package cn.bdqn.service;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import cn.bdqn.dao.NoticeMapper;
import cn.bdqn.entity.Notice;
import cn.bdqn.util.Page;
@Service("noticeService")
public class NoticeServiceImpl implements NoticeService{
	@Autowired
	private NoticeMapper noticeMapper;
	public Integer add(Notice notice) {
		
		return noticeMapper.add(notice);
	}

	public void getList(String title, Page<Notice> page) {
		List<Notice> list=new ArrayList<Notice>();
		Integer count=noticeMapper.getcount(title);
		if(count>0){
			page.setTotalCount(count);
			Integer start=(page.getPageNo()-1)*page.getPageSize();
			list=noticeMapper.getList(title, start, page.getPageSize());
			page.setList(list);
		}else{
			page.setTotalPageCount(0);
			page.setList(list);
		}
	}

	public Notice getNoticeById(Integer id) {
		
		return noticeMapper.getNoticeById(id);
	}

	public Integer getTitleCount(String title) {
		return noticeMapper.getTitleCount(title);
	}

	public Integer update(Notice notice) {
				return noticeMapper.update(notice);
	}

	public Integer updateLock(Integer id) {
		return noticeMapper.updateLock(id);
	}

}
