package cn.bdqn.entity;

import java.util.Date;

public class Notice {
	/*
	FieldTypeComment
	idint(10)公告编码
	titlevarchar(20)标题
	contentvarchar(500)公告内容
	releaseTimedatetime发布时间
	announcervarchar(10)发布者*/
		private int id;
		private String title;
		private String content;
		private Date releaseTime;
		private String announcer;
		public int getId() {
			return id;
		}
		public void setId(int id) {
			this.id = id;
		}
		public String getTitle() {
			return title;
		}
		public void setTitle(String title) {
			this.title = title;
		}
		public String getContent() {
			return content;
		}
		public void setContent(String content) {
			this.content = content;
		}
		public Date getReleaseTime() {
			return releaseTime;
		}
		public void setReleaseTime(Date releaseTime) {
			this.releaseTime = releaseTime;
		}
		public String getAnnouncer() {
			return announcer;
		}
		public void setAnnouncer(String announcer) {
			this.announcer = announcer;
		}
		@Override
		public String toString() {
			return "Proclamation [announcer=" + announcer + ", content=" + content
					+ ", id=" + id + ", releaseTime=" + releaseTime + ", title="
					+ title + "]";
		}
		
		
}
