package com.blog.servlets;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blog.dao.UserDao;
import com.blog.entities.Message;
import com.blog.entities.user;
import com.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class LoginServlet
 */
@WebServlet("/LoginServlet")
public class LoginServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public LoginServlet() {
        super();
        // TODO Auto-generated constructor stub
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
		// TODO Auto-generated method stub
		response.setContentType("text/html");
		PrintWriter out = response.getWriter();
		Connection con = ConnectionProvider.getConnection();
		UserDao userdao = new UserDao(con);
		user myuser = userdao.getUserByEmailAndPassword(request.getParameter("user_email"), request.getParameter("user_password"));
		if( myuser == null) {
			out.println("<h1>Invalid Details</h1>");
			Message mssg = new Message("invalid details try again!" , "error" , "alert-danger");
			response.sendRedirect("login.jsp");
			HttpSession session = request.getSession();
			session.setAttribute("mssg", mssg);
		}
		else {
			out.println("<h1> user found successfully</h1>");
			HttpSession s = request.getSession();
			s.setAttribute("current_user", myuser);
			response.sendRedirect("profile.jsp");
		}
		
	}

}
