<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page isErrorPage="True" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Sorry Something went Wrong!</title>
<link rel="stylesheet" type="text/css" href="css/mystyle.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<style>
.container{	
	display:flex;
	flex-direction: column;
	align-items: center;
	
 }
</style>
</head>
<body>
	<div class="container">
	<img src="images/mark.png" class="img-fluid" >
	<h3 class="display-5">Something went wrong</h3>
	<%=exception %>
	<a href="index.jsp" class="bg-primary btn-lg text-white mt-3 p-2">Home</a>
	</div>
</body>
</html>