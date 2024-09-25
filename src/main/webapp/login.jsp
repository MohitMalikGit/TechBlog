<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  <%@ page import="com.blog.entities.Message" %>
  
  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>LogIn Page</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
.clipchange{		
 clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 76% 95%, 40% 96%, 0 100%, 0 0);
 }
</style>
</head>
<body>
	<!-- content  -->
	
	<!-- navbar -->
	<%@include file="normal_navbar.jsp" %>
	
	
	<main class="d-flex align-items-center bg-primary" style="height:80vh">
	<div class="container">
	<div class="row">
	<div class="col-md-4 offset-md-4">
	<div class="card">
	<div class="card-header bg-primary text-white">
		<p> Login Here </p>
	</div>
	
<%

    	Message mssg = (Message)session.getAttribute("mssg");
		if( mssg != null){
			
			%>
				<div class="alert <%=mssg.getCssClass() %>" role="alert">
  	          <%=mssg.getContent() %>
</div>
			<% 
			session.removeAttribute("mssg");
		}
  %>
	<div class="card-body">
	
	<form action="LoginServlet" method="post">
  	<div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  required name="user_email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
 	 </div>
 	 <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" required name="user_password"class="form-control" id="exampleInputPassword1" placeholder="Password">
 	 </div>
 	<div class="container text-center mt-3">
  	<button type="submit" class="btn btn-primary">Submit</button>
  	</div>
	</form>
	
	</div>
	</div>
	</div>
	</div>
	</div>
	</main>
	
	<!-- javascript  -->
<script type="text/javascript" src="javascript/myjs.js"></script>
	<!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/js/bootstrap.min.js" integrity="sha512-UR25UO94eTnCVwjbXozyeVd6ZqpaAE9naiEUBK/A+QDbfSTQFhPGj5lOR6d8tsgbBk84Ggb5A3EkjsOgPRPcKA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>
