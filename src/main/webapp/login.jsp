<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login Page</title>
<link rel="stylesheet" href="LoginRegister.css">
</head>
<body>
	<div class="container">
		<h1>Login</h1>
		<form action="LoginServlet" method="post">
			<label for="username">USERNAME: </label> 
			<input type="text" id="username" name="username" required><br> 
			<label for="username">PASSWORD: </label>
			<input type="password" id="password" name="password" required><br>
			<button type="submit" >Login</button>
		</form>
		 <p><a href="index.html">Back to Home</a></p>
		
		
		<%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Invalid username or password. Please try again.</p>
        <% } %>
        
        <%-- Display  message if registration successful --%>
        <% String rs = request.getParameter("registration");
            if (rs != null && rs.equals("success")) { %>
                <p style="color: green;">Your registration is successful.Please Login</p>
        <% } %>
		
		</div>
</body>
</html>