<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v1 by Colorlib</title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		
		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/fonts4/material-design-iconic-font/css/material-design-iconic-font.min.css">

		<!-- STYLE CSS -->
		<link rel="stylesheet" href="<%=request.getContextPath()%>/css4/style.css">
	</head>

	<body>

		<div class="wrapper" style="background-image: url('<%=request.getContextPath()%>/images4/bg-registration-form-1.jpg');">
			<div class="inner">
				<div class="image-holder">
					<img src="<%=request.getContextPath()%>/images4/registration-form-1.jpg" alt="">
				</div>
				<form action="<%=request.getContextPath()%>/UserServlet" method="post">
					<h3>Registration Form</h3>
					<div class="form-group" style="width: 200%">
						<input type="text" placeholder="Full Name" class="form-control" name="fullName">
<%--						<input type="text" placeholder="Last Name" class="form-control">--%>
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Email" class="form-control" name="email">
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Phone" class="form-control" name="phone">
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Address" class="form-control" name="address">
						<i class="zmdi zmdi-email"></i>
					</div>
					<div class="form-wrapper">
						<input type="text" placeholder="Username" class="form-control" name="userName">
						<i class="zmdi zmdi-account"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Password" class="form-control" name="password">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<div class="form-wrapper">
						<input type="password" placeholder="Confirm Password" class="form-control" name="confirmPassword">
						<i class="zmdi zmdi-lock"></i>
					</div>
					<button type="submit" value="register" name="action">Register
						<i class="zmdi zmdi-arrow-right"></i>
					</button>
				</form>
			</div>
		</div>
		
	</body><!-- This templates was made by Colorlib (https://colorlib.com) -->
</html>