package cn.bdqn.entity;

import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

/**
 * FieldTypeComment
travelMemoryIdint(5) NOT NULL主键，旅游记忆表id，自增
userNamevarchar(10) NOT NULL发表用户，外键
titlevarchar(30) NOT NULL标题
submitTimedatetime NOT NULL发表时间
contentvarchar(500) NOT NULL发表内容
photovarchar(100) NULL发表图片
 * @author Administrator
 *
 */
public class Memory {
	private Integer travelMemoryId,lock;
	private String userName,title,photo,memoryType,content;
	private MultipartFile file;
	private Date submitTime;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public Memory() {
	}
	public Memory( String userName, String title,
			String photo, String memoryType, String content,String submitTime) {
		this.userName = userName;
		this.title = title;
		this.photo = photo;
		this.memoryType = memoryType;
		this.content = content;
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try {
			this.submitTime = df.parse(submitTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getMemoryType() {
		return memoryType;
	}
	public void setMemoryType(String memoryType) {
		this.memoryType = memoryType;
	}
	public Integer getTravelMemoryId() {
		return travelMemoryId;
	}
	public void setTravelMemoryId(Integer travelMemoryId) {
		this.travelMemoryId = travelMemoryId;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getPhoto() {
		return photo;
	}
	public void setPhoto(String photo) {
		this.photo = photo;
	}
	public Date getSubmitTime() {
		return submitTime;
	}
	public void setSubmitTime(String submitTime) {
		DateFormat df=new SimpleDateFormat("yyyy-MM-dd hh:mm");
		try {
			this.submitTime =df.parse( submitTime);
		} catch (ParseException e) {
			e.printStackTrace();
		}
	}
	@Override
	public String toString() {
		return "Memory [memoryType=" + memoryType + ", photo=" + photo
				+ ", submitTime=" + submitTime + ", title=" + title
				+ ", travelMemoryId=" + travelMemoryId + ", userName="
				+ userName + "]";
	}
	
	
	
	
	
	
	
	
}
