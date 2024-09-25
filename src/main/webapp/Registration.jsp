<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
	clip-path: polygon(30% 0%, 70% 0%, 99% 0, 100% 94%, 69% 91%, 30% 100%, 0 99%, 0 1%);
}
</style>
</head>
<body>
	<!-- content  -->
	
	<!-- navbar -->
	<%@include file="normal_navbar.jsp" %>
	
	<main class="bg-primary">
	<div class="container">
	<div class="col-md-6 offset-md-3">
	<div class="card p-5">
	<div class="card-header">
	<p>Register Here </p>
	</div>
	
	<div class="card-body">
	<form action="RegisterServlet" method="POST">
  <div class="form-group">
    <label for="Username">User Name</label>
    <input name ="user_name" type="text" class="form-control" id="username" aria-describedby="emailHelp" placeholder="Enter Name">
  </div>
  <div class="form-group">
    <label for="exampleInputEmail1">Email address</label>
    <input  name= "user_email" type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Enter email">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input name="user_password" type="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
  <br> 
  
   <div class="form-group">
    <label for="gender">Select Gender</label><br>
    <input type="radio"  id="gender" name="gender" value="male">Male
    <input type="radio"  id="gender" name="gender" value="female">Female
  </div>
  <br>
   <div class="form-group">
    <textarea name="about" rows="3" cols="20" placeholder="Enter something about yourself" class="form-control"></textarea>
    <br>
  </div>
  <div class="form-check">
    <input name="terms&condition" type="checkbox" class="form-check-input" id="exampleCheck1" >
    <label class="form-check-label" for="exampleCheck1">Agree terms and conditions</label>
	  </div>
	  <br>
  <button type="submit" class="btn btn-primary">Submit</button>
</form>
	</div>
	
	
	<div class="card-footer">
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
