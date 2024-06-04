<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="LoginRegister.css">
</head>
<body>
	<div class="container">
		<h1>Register</h1>
		<form action="RegisterServlet" method="post">
			<label for="username">USERNAME: </label> 
			<input type="text" id="username" name="username" required><br> 
			<label for="username">EMAIL ID: </label> 
			<input type="text" id="email" name="email" required><br>
			<label for="username">PASSWORD: </label> 
			<input type="password" id="password" name="password" required><br>
			<button type="submit">Register</button>
		</form>
		 <p><a href="index.html">Back to Home</a></p>
		
		</div>
</body>
</html>