package com.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.blog.dao.UserDao;
import com.blog.entities.user;
import com.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/RegisterServlet")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegisterServlet() {
        super();
        // TODO Auto-generated constructor stuba
    }

	/**	
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String x = request.getParameter("gender");
		System.out.println(x);
		doGet(request, response);
		PrintWriter out = response.getWriter();
		response.setContentType("text/html");
		String check = request.getParameter("terms&condition");
		if( check == null) {
			out.println("<h1> are u retarted, please agree to terms and condition </h1>");
		}
		else {
			String name = request.getParameter("user_name");
			String email = request.getParameter("user_email");
			String password = request.getParameter("user_password");
			String about = request.getParameter("about");
			String gender = request.getParameter("gender");
			String regdate = java.time.LocalDateTime.now().toString();
			user us = new user(name,email,password,gender,about,regdate);
			Connection con = ConnectionProvider.getConnection();
			UserDao userdao = new UserDao(con);
			if(userdao.saveUser(us)) {
				out.println("<h1> your data has been saved successfully</h1>");
			}
			
		}
	}

}
