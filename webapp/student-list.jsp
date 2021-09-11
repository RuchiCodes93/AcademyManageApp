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
				<li><a href="<%=request.getContextPath()%>/studentList"
					class="nav-link">Students</a></li>
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
			<h3 class="text-center">List of Students</h3>
			<hr>
			<div class="container text-left">

				<a href="<%=request.getContextPath()%>/newStudent" class="btn btn-success">Add
					New User</a>
			</div>
			<br>
			<table class="table table-bordered">
				<thead>
					<tr>
						<th>ID</th>
						<th>Student Name</th>
						<th>Student Surname</th>
						<th>Age</th>
						<th>Address</th>
						<th>Phone</th>
						<th>Class</th>
						<th>Edit</th>
						<th>Delete</th>
					</tr>
				</thead>
				<tbody>
					<!--   for (Todo todo: todos) {  -->
					<c:forEach var="teacher" items="${listStudent}">
						
						<tr>
							<td><c:out value="${teacher.studentId}" /></td>
							<td><c:out value="${teacher.firstName}" /></td>
							<td><c:out value="${teacher.lastName}" /></td>
							<td><c:out value="${teacher.age}" /></td>
							<td><c:out value="${teacher.address}" /></td>
							<td><c:out value="${teacher.phone}" /></td>
							<td><c:out value="${teacher.classDetails}" /></td>
							<td><a href="editStudent?id=<c:out value='${teacher.studentId}' />">Edit</a></td>
							<td><a href="deleteStudent?id=<c:out value='${teacher.studentId}' />">Delete</a></td>
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
		</div>
	</div>
</body>
</html>
