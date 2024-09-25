<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@page import="com.blog.entities.user" %>
     
    <%
    user user = (user)session.getAttribute("current_user");
    if( user == null){
    	response.sendRedirect("login.jsp");
    }
    
    String s = (String)session.getAttribute("mssg");
    
    %>
    
    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title><%=user.getName()%> profile</title>
	<link rel="stylesheet" href="css/profileCSS.css">
</head>
<body>
	<div class="container">
	 <!-- header -->
		<div class="header">
			<div style="display:flex; color:white" ><b style="color:black">Logged in as &nbsp;</b>: <div class="photo"><img  src="images/deafult_PP.jpg"></div>
			
			<%=user.getName()%></div>
			
			 <div style="display:flex; color:white" ><img  src="images/logout_icon.jpg"><a href="LogoutServlet" style="text-decoration: none;color:white; "> Logout </a> </div>
		</div>
		
		<!-- Access bar -->
	 <div class="Access_bar" >
		<button type="button" style="margin-right: 80px; margin-left:10px;" id="my_blogs"><div style="display: flex"><img  src="images/myblogicon.png"><span style="color:black; margin-top:3px"> My Blogs</span></div></button>
		
		<button type="button" id="new_blog" > <div style="display: flex"><img  src="images/blogWritingIcon.png"><span style="color:black; margin-top:3px"> New Blog!</span></div></button> 	
	 </div>
	
	
	<!-- <form > -->
	<form action="BlogServlet" method="post" style="display:flex; width:100%; justify-content: center;">
	<div class="cred_blog">
	<div>
		 <p>Enter blog's Title : <input type="text" id="blog_title" name="blog_title"> </p> <br>
		<div class="flxdesc"> <p >description : </p> <textarea name="blog_desc" id="blog_desc" style="margin-left: 5px; width: 200px"></textarea></div>
		<div style="display: flex; justify-content: center;"> <button type="button" id="enter_blog" style="justify-content: center; margin-top: 10px">Enter</button></div>
	 	</div>
	</div>
	
	<div class="write_blog">
		<h1 id="w_blg_title"  style="text-align: center; margin-bottom: 20px"></h1>
		<textarea rows="30" name="blog_text"  id="w_txt_area" placeholder="Write Here" style="max-width:100%"></textarea><br>
		<div style="display:flex;justify-content: center"><button type="submit" id="post_blog">Post Blog</button></div>
	</div>
	
	
	
	
	
	
	<!-- 	</form>		 -->
	</form>
	
	<div class="blog_container">
		 	
		 	<h1> Hi this is blog storage</h1>
			
		
	</div>
	
	

	</div>
	<% 
	    if( s != null){
    	%>
    	<script>
    		alert("<%=s%>");
    	</script>
    	<%
    	session.removeAttribute("mssg");
    }
	%>
	
	<script>
		document.getElementById("new_blog").addEventListener( 'click' , ()=>{
			let x = document.getElementById("new_blog");
			let y = document.getElementById("my_blogs");
			if(x.style.backgroundColor != "green" ){
			document.getElementsByClassName("cred_blog")[0].style.display = "block";
			}
			x.style.backgroundColor = "green";
			y.style.backgroundColor = "white";
		});
		
		document.getElementById("my_blogs").addEventListener( 'click' , ()=>{
			let x = document.getElementById("new_blog");
			let y = document.getElementById("my_blogs");
			if(x.style.backgroundColor == "green" ){	
				document.getElementsByClassName("cred_blog")[0].style.display = "none";
			}
			x.style.backgroundColor = "white";
			y.style.backgroundColor = "green";
		});
				
		document.getElementById("enter_blog").addEventListener( 'click' , ()=>{
			document.getElementsByClassName("cred_blog")[0].style.display = "none";
			document.getElementsByClassName("write_blog")[0].style.display = "flex";
			document.getElementById("w_blg_title").innerHTML = document.getElementById("blog_title").value;
			
		});
		
	</script>
</body>
</html>