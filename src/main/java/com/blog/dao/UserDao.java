package com.blog.dao;
import java.sql.*;


import com.blog.entities.user;
public class UserDao {
	private Connection con;
	 
	public UserDao( Connection con) {
		this.con = con;
	}
	public boolean saveUser(user user) {
		boolean check = false;
		try {
			String query = "insert into user(username, email, password, gender, about, regdate,profile) values(?,?,?,?,?,?,?)";	
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, user.getName());
			pstmt.setString(2, user.getEmail());
			pstmt.setString(3, user.getPassword());
			pstmt.setString(4, user.getGender());
			pstmt.setString(5, user.getAbout());
			pstmt.setString(6, user.getRegdate());
			pstmt.setString(7, user.getProfile());
			pstmt.execute();
			check =true;
		}
		catch(Exception e) {
			e.printStackTrace();
		}
		return check;
	}
	public user getUserByEmailAndPassword(String email, String password) {
		user user = null;
		try {
			String query="select * from user where email=? and password=?";
			PreparedStatement pstmt = con.prepareStatement(query);
			pstmt.setString(1, email);  
			pstmt.setString(2, password);			
			ResultSet set = pstmt.executeQuery();
			if( set.next()) {
				user = new user();
				user.setName(set.getString("username"));
				user.setEmail(set.getString("email"));
				user.setPassword(set.getString("password"));
				user.setGender(set.getString("gender"));
				user.setAbout(set.getString("about"));
				user.setRegdate(set.getString("regdate"));
				user.setProfile(set.getString("profile"));
			}
			
		}
		catch(Exception e){
			e.printStackTrace();
		}
		return user;
	}
	
}
