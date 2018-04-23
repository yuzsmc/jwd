package com.model.sj;

public class Notice {
	private int notice_id;
	private String item;
	private String StartTime;
	private String EndTime;
	private String notice_text;
	private String get;
	private String post;
	private String person;
	private int longer;
	public Notice(){};
	public Notice(int notice_id, String item, String startTime, String endTime,
			String notice_text, String get, String post, String person,
			int longer) {
		super();
		this.notice_id = notice_id;
		this.item = item;
		StartTime = startTime;
		EndTime = endTime;
		this.notice_text = notice_text;
		this.get = get;
		this.post = post;
		this.person = person;
		this.longer = longer;
	}
	public int getNotice_id() {
		return notice_id;
	}
	public void setNotice_id(int notice_id) {
		this.notice_id = notice_id;
	}
	public String getItem() {
		return item;
	}
	public void setItem(String item) {
		this.item = item;
	}
	public String getStartTime() {
		return StartTime;
	}
	public void setStartTime(String startTime) {
		StartTime = startTime;
	}
	public String getEndTime() {
		return EndTime;
	}
	public void setEndTime(String endTime) {
		EndTime = endTime;
	}
	public String getNotice_text() {
		return notice_text;
	}
	public void setNotice_text(String notice_text) {
		this.notice_text = notice_text;
	}
	public String getGet() {
		return get;
	}
	public void setGet(String get) {
		this.get = get;
	}
	public String getPost() {
		return post;
	}
	public void setPost(String post) {
		this.post = post;
	}
	public String getPerson() {
		return person;
	}
	public void setPerson(String person) {
		this.person = person;
	}
	public int getLonger() {
		return longer;
	}
	public void setLonger(int longer) {
		this.longer = longer;
	}
	
}
