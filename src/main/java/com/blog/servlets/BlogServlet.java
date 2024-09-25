package com.blog.servlets;

import java.io.IOException;
import java.sql.Connection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.blog.dao.BlogDao;
import com.blog.entities.Blog;
import com.blog.entities.user;
import com.blog.helper.ConnectionProvider;

/**
 * Servlet implementation class BlogServlet
 */
@WebServlet("/BlogServlet")
public class BlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public BlogServlet() {
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
		Connection con = ConnectionProvider.getConnection();
		HttpSession curSession = request.getSession();
		user user = ((user)curSession.getAttribute("current_user"));
		String email_id = user.getEmail();
		String blog_title = request.getParameter("blog_title");
		String blog_desc = request.getParameter("blog_desc");
		String blog_text = request.getParameter("blog_text");
		String reg_date = java.time.LocalDateTime.now().toString();
		Blog blog = new Blog(email_id ,blog_title, reg_date ,blog_desc, blog_text);
		BlogDao bdao = new BlogDao(con);
		boolean check = bdao.SaveBlog(blog);
		String mssg = "Your blog is posted successfully on your timeline!";
		curSession.setAttribute("mssg" , mssg);
		response.sendRedirect("profile.jsp");
		doGet(request, response);
	}

}
