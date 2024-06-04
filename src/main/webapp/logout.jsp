<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>logout jsp page</title>
	

</head>
<body>
<%
	//retrive the session object
	HttpSession currentSession=request.getSession(false);

		if(currentSession != null){
			currentSession.invalidate();
		}
			//redirect to login page
			response.sendRedirect("index.html");
%>
</body>
</html>