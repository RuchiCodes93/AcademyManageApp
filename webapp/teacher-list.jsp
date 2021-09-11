<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<title>Academy Management Application</title>
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css"
	integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T"
	crossorigin="anonymous">
</head>
<body>

<%
response.setHeader("Cache-Control","no-cache,no-store,must-revalidate");

if(session.getAttribute("uname")== null){
	
	
	
	response.sendRedirect("login.jsp");
} %>
	<header>
		<nav class="navbar navbar-expand-md navbar-dark"
			style="background-color: black">
			<div>
				<a href="Welcome.jsp" class="navbar-brand"> Academy Management Application </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Teachers</a></li>
			</ul>
			
			<ul class="navbar-nav  ml-auto" >
				<li  class ="nav-link active">Welcome ${uname}</li>
			</ul>
		</nav>
	</header>
	<br>

	<div class="row">
		<!-- <div class="alert alert-success" *ngIf='message'>{{message}}</div> -->

		<div class="container">
			<h3 class="text-center">List of Teachers</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/new" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Name</th>
						<th>Subject</th>
						<th>Salary</th>
						<th>Address</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="teacher" items="${listTeacher}">
						
						<tr>
							<td><c:out value="${teacher.teacher_id}" /></td>
							<td><c:out value="${teacher.teacher_name}" /></td>
							<td><c:out value="${teacher.teacher_sub}" /></td>
							<td><c:out value="${teacher.teacher_salary}" /></td>
							<td><c:out value="${teacher.teacher_address}" /></td>
							<td><a href="edit?id=<c:out value='${teacher.teacher_id}' />">Edit</a></td>
							<td><a href="delete?id=<c:out value='${teacher.teacher_id}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
