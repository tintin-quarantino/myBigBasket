<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

		<h1>Sign-up Page</h1>
		
		<h1>Add New User</h1>       
       <form action="savesignup" method="post">
			Name <input type="text" name="name" /> <br>
			Username <input type="text" name="username" /> <br> 
			Password <input type="password" name="password" /> <br>
			<input type="submit" value="Sign-up" /> <br>
	</form>

</body>
</html>