package cn.bdqn.entity;

import java.util.Date;

public class Mc {
	/*commentId       INT(5)       
	userName        VARCHAR(10)           
	commentContent  VARCHAR(200)                           
	commentTime     DATETIME                                  
	travelMemoryId  INT(5)                      
*/
	private Integer commentId,travelMemoryId;
	public Integer getCommentId() {
		return commentId;
	}
	public void setCommentId(Integer commentId) {
		this.commentId = commentId;
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
	public String getCommentContent() {
		return commentContent;
	}
	public void setCommentContent(String commentContent) {
		this.commentContent = commentContent;
	}
	public Date getCommentTime() {
		return commentTime;
	}
	public void setCommentTime(Date commentTime) {
		this.commentTime = commentTime;
	}
	private String  userName,commentContent;
	private Date commentTime;
	public Mc(Integer commentId,  String userName,
			String commentContent, Date commentTime,Integer travelMemoryId) {
		super();
		this.commentId = commentId;
		this.travelMemoryId = travelMemoryId;
		this.userName = userName;
		this.commentContent = commentContent;
		this.commentTime = commentTime;
	}
	public Mc() {
		
	}
	@Override
	public String toString() {
		return "Mc [commentContent=" + commentContent + ", commentId="
				+ commentId + ", commentTime=" + commentTime
				+ ", travelMemoryId=" + travelMemoryId + ", userName="
				+ userName + "]";
	}
	
	
}
