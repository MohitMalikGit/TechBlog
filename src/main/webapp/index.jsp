<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %>
    <%@ page import="com.blog.helper.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>TechBlog</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>

.clipchange{		
clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 100%, 76% 95%, 40% 96%, 0 100%, 0 0);

</style>
</head>
<body>
	<%@include file="normal_navbar.jsp" %>
	<div class="container-fluid  bg-primary clipchange">
	<div class="jumbotron p-5">
	<h1 class="display-3 "> Welcome to TechHub</h1>
	<p>Competitive programming or sport programming is a mind sport involving participants trying to program according to provided specifications. The contests are usually held over the Internet or a local network. Competitive programming is recognized and supported by several multinational software and Internet companies, such as Google, and Meta.</p>
	<button style="btn btn-outline-light">Start Now!</button>
	<a href="login.jsp" style="btn btn-outline-dark"><span class="fa fa-hand-o-right fa-spin"></span> <span style="color:white">Login</span></a>
	</div>
	</div>
	<br><br><br>
	<!-- cards  -->
	<div class="container-fluid">
	<div class="row">
		<div class="col-md-4">
			<div class="card">
  			<div class="card-body">
   			<h5 class="card-title">Card title</h5>
    		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 			 <a href="#" class="btn btn-primary">Go somewhere</a>
 	 	</div>
	</div>
	</div>
		<div class="col-md-4">
			<div class="card">
  			<div class="card-body">
   			<h5 class="card-title">Card title</h5>
    		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 			 <a href="#" class="btn btn-primary">Go somewhere</a>
 	 	</div>
	</div>
	</div>
		<div class="col-md-4">
			<div class="card">
  			<div class="card-body">
   			<h5 class="card-title">Card title</h5>
    		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 			 <a href="#" class="btn btn-primary">Go somewhere</a>
 	 	</div>
	</div>
	</div>
	</div>
	<br>
	<div class="row">
		<div class="col-md-4">
			<div class="card">
  			<div class="card-body">
   			<h5 class="card-title">Card title</h5>
    		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 			 <a href="#" class="btn btn-primary">Go somewhere</a>
 	 	</div>
	</div>
	</div>
		<div class="col-md-4">
			<div class="card">
  			<div class="card-body">
   			<h5 class="card-title">Card title</h5>
    		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 			 <a href="#" class="btn btn-primary">Go somewhere</a>
 	 	</div>
	</div>
	</div>
		<div class="col-md-4">
			<div class="card">
  			<div class="card-body">
   			<h5 class="card-title">Card title</h5>
    		<p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
 			 <a href="#" class="btn btn-primary">Go somewhere</a>
 	 	</div>
	</div>
	</div>
	</div>
	</div>
	
	<script type="text/javascript" src="javascript/myjs.js"></script>
	<!-- JQuery -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>
<!-- Bootstrap JS -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap/4.6.1/js/bootstrap.min.js" integrity="sha512-UR25UO94eTnCVwjbXozyeVd6ZqpaAE9naiEUBK/A+QDbfSTQFhPGj5lOR6d8tsgbBk84Ggb5A3EkjsOgPRPcKA==" crossorigin="anonymous" referrerpolicy="no-referrer"></script>
</body>
</html>