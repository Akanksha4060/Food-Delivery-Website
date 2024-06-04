<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Order now jsp</title>
	<link rel="stylesheet" href="site.css">

</head>
<body>


<section class="order" id="order">

		<h3 class="sub-heading">order now</h3>
		<h1 class="heading">free and fast</h1>

		<form action="OrderNowServlet" method="post">
		
			<div class="inputBox">
				<div class="input">
					<span>your name</span>
					<input type="text" id="username" name="username" placeholder="enter your name" required>
				</div>
				<div class="input">
					<span>your number</span>
					<input type="text" id="number" name="number" placeholder="enter your number" required>
				</div>
			</div>

			<div class="inputBox">
				<div class="input">
					<span>your order</span>
					<input type="text" id="foodName" name="foodName" placeholder="enter food name" required>
				</div>
				<div class="input">
					<span>additional food</span>
					<input type="number" id="extra" name="extra" placeholder="extra with food">
				</div>
			</div>

			<div class="inputBox">
				<div class="input">
					<span>how much</span>
					<input type="number" id="orderCount" name="orderCount" placeholder="how many order" required>
				</div>
				<div class="input">
					<span>date and time</span>
					<input type="datetime-local">
				</div>
			</div>

			<div class="inputBox">
				<div class="input">
					<span>Your Address</span>
					<textarea name="" id="address" name="address" placeholder="enter your address" id="" cols="30" rows="10" required>
                    </textarea>
				</div>
				<div class="input">
					<span>Your Messager</span>
					<textarea name="" id="msg" name="msg" placeholder="enter your message" id="" cols="30" rows="10" required>
                    </textarea>
                    <button type="submit" class="btn1">Order Now</button>
				</div>
				
				<%-- Display error message if login fails --%>
        <% String error = request.getParameter("error");
            if (error != null && error.equals("1")) { %>
                <p style="color: red;">Please try again.</p>
        <% } %>
        
        <%-- Display  message if registration successful --%>
        <% String rs = request.getParameter("OrderPlaced");
            if (rs != null && rs.equals("success")) { %>
            <p style="color: green;"><h1>Your Order had been placed...</h1></p>
        <% } %>
		
				             
				
			</div>
			
			
		</form>


	</section>

</body>
</html>