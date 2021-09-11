<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>


<title>User Management Application</title>
<!-- <link rel="stylesheet" -->
<!-- 	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" -->
<!-- 	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" -->
<!-- 	crossorigin="anonymous"> -->
	
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</head>
<body>

	<%
	response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");

	if(session.getAttribute("uname")== null){
	
	response.sendRedirect("login.jsp");
} %>


	<header>
		<nav class="navbar navbar-dark bg-dark navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">Academy Management App</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse"
				data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
				aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
			</button>
			<div class="collapse navbar-collapse" id="navbarNavDropdown">
				<ul class="navbar-nav">
					<li class="nav-item active"><a class="nav-link" href="Welcome.jsp">Home
							<span class="sr-only">(current)</span>
					</a></li>
					
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Faculty Manage </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="<%=request.getContextPath()%>/new">Add Teacher</a>
							
							
							 <a class="dropdown-item" href="<%=request.getContextPath()%>/list">View Teachers</a>
						</div>
					</li>
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Student Manage </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="<%=request.getContextPath()%>/newStudent">Add Student</a>
							
							
							 <a class="dropdown-item" href="<%=request.getContextPath()%>/studentList">View Students</a>
						</div>
					</li>
					<li class="nav-item dropdown"><a class="nav-link dropdown-toggle" href="#"
						id="navbarDropdownMenuLink" data-toggle="dropdown"
						aria-haspopup="true" aria-expanded="false"> Class Report </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdownMenuLink">
							<a class="dropdown-item" href="<%=request.getContextPath()%>/classDetails">Class Details</a>
							
							
<%-- 							 <a class="dropdown-item" href="<%=request.getContextPath()%>/studentList">View Students</a> --%>
						</div>
					</li>
					
					
				</ul>
				<ul class="navbar-nav ml-auto" >
				<li style ="margin-right: 10px" class ="nav-link active">Welcome ${uname}</li>
				<li><form class="form-inline">
				    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
				    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
				 </form></li>
				 <li style ="margin-left: 5px">
				 <a href="<%=request.getContextPath()%>/Logout" class="btn btn-danger">
					Logout</a>
				 </li>
				</ul>
				
				
				
			</div>
		</nav>
	</header>


</body>
</html>