package com.blog.dao;

import java.sql.*;
import java.util.List;

import com.blog.entities.Blog;

public class BlogDao {
	private Connection con;
	public BlogDao(Connection con){
		this.con = con;
	}
	public boolean SaveBlog( Blog blog) {
		boolean rtrn = false;
		try {
			String query = "insert into blog_table (email_id , regdate , blog_desc,blog_text,blog_title) values(?,?,?,?,?)";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, blog.getemail_id());
			pstmt.setString(2, blog.getRegdate());
			pstmt.setString(3, blog.getBlog_desc());
			pstmt.setString(4, blog.getBlog_text());
			pstmt.setString(5, blog.getBlog_title());
			pstmt.execute();
			rtrn = true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return rtrn;
	}
	
	public List<Blog> GetBlogs() throws Exception {
		String query = "select * from blog_table where email_id=? ";
		PreparedStatement pstmt = con.prepareStatement(query);
		ResultSet rs = pstmt.executeQuery();
		System.out.println(rs);
		
		return null;
	}
}
