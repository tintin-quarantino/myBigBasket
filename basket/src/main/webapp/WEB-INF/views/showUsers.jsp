<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
   "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html lang="en" class="h-100">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.88.1">
    <title>Big Basket</title>

    <link rel="canonical" href="https://getbootstrap.com/docs/5.1/examples/cover/">

    

    <!-- Bootstrap core CSS -->
<link href="resources/css/bootstrap.min.css" rel="stylesheet">

    <style>
      .bd-placeholder-img {
        font-size: 1.125rem;
        text-anchor: middle;
        -webkit-user-select: none;
        -moz-user-select: none;
        user-select: none;
      }

      @media (min-width: 768px) {
        .bd-placeholder-img-lg {
          font-size: 3.5rem;
        }
      }
    </style>

    
    <!-- Custom styles for this template -->
    <link href="resources/cover.css" rel="stylesheet">
  </head>
  <body class="d-flex h-100 text-center text-white bg-dark">
    
<div class="cover-container d-flex w-100 h-100 p-3 mx-auto flex-column">
  <header class="mb-auto">
    <div>
      <h3 class="float-md-start mb-0">Big Basket</h3>
      <nav class="nav nav-masthead justify-content-center float-md-end">
        <a class="nav-link active" aria-current="page" href="home">Home</a>
        <a class="nav-link" href="about">About</a>
        <a class="nav-link" href="contact">Contact</a>
      </nav>
    </div>
  </header>

		<main class="px-3">
		<h1>All Users</h1>
		<table class="table table-dark table-hover table-striped" border="2" width="70%"
			cellpadding="2">
			<tr>
				<th>Name</th>
				<th>Username</th>
				<th>Admin Status</th>
				<th>Delete User</th>
				<th>User Orders</th>
			</tr>
			<c:forEach var="user" items="${list}">
				<tr>
					<td>${user.name}</td>
					<td>${user.username}</td>
					<td><a href="changeStatus/${user.id}">${user.adminStatus}</a></td>
					<td><a href="deleteUser/${user.id}">Delete</a></td>
					<td><a href="showUserOrders/${user.id}">Orders</a></td>
				</tr>
			</c:forEach>
		</table>

		<br>
		<form action="addUser" method="post">
			<input type="submit" value="Add User" class="btn btn-outline-primary" />
			<br>
		</form>
		<br>

		<form action="/basket">
			<input type="submit" value="Home" class="btn btn-outline-primary" />
			<br>
		</form>
		</main>

		<footer class="mt-auto text-white-50">
			<p>Made with &#10084;&#65039; by Suryanshu | Swapnil | Shubham</p>
		</footer>
	</div>


    
  </body>
</html>
   