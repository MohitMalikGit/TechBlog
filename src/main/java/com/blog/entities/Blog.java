package com.blog.entities;

public class Blog {
	private int blog_id;
	private String email_id;
	private String regdate;
	private String blog_desc;
	private String blog_title;
	private String blog_text;
	public Blog(int blog_id, String email_id, String regdate, String blog_desc, String blog_text,String blog_title) {
		super();
		this.blog_id = blog_id;
		this.email_id = email_id;
		this.regdate = regdate;
		this.blog_desc = blog_desc;
		this.blog_text = blog_text;
		this.blog_title = blog_title;
	}
	public String getBlog_title() {
		return blog_title;
	}
	public void setBlog_title(String blog_title) {
		this.blog_title = blog_title;
	}
	public Blog(String email_id,String blog_title, String regdate, String blog_desc, String blog_text) {
		super();
		this.email_id = email_id;
		this.regdate = regdate;
		this.blog_title = blog_title;
		this.blog_desc = blog_desc;
		this.blog_text = blog_text;
	}
	public int getBlog_id() {
		return blog_id;
	}
	public void setBlog_id(int blog_id) {
		this.blog_id = blog_id;
	}
	public String getemail_id() {
		return email_id;
	}
	public void setemail_id(String email_id) {
		this.email_id = email_id;
	}
	public String getRegdate() {
		return regdate;
	}
	public void setRegdate(String regdate) {
		this.regdate = regdate;
	}
	public String getBlog_desc() {
		return blog_desc;
	}
	public void setBlog_desc(String blog_desc) {
		this.blog_desc = blog_desc;
	}
	public String getBlog_text() {
		return blog_text;
	}
	public void setBlog_text(String blog_text) {
		this.blog_text = blog_text;
	}
	
	
}
