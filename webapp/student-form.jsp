<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>


<title>User Management Application</title>
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
				<a href="Welcome.jsp" class="navbar-brand"> Academy Management App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/studentList"
					class="nav-link">Students</a></li>
			</ul>

			<ul class="navbar-nav  ml-auto">
				<li class="nav-link active"><a href="Logout">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>
	<div class="container col-md-5">
		<div class="card">
			<div class="card-body">
				<c:if test="${student != null}">
					<form action="updateStudent" method="post">
				</c:if>
				<c:if test="${student == null}">
					<form action="studentInsert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${student != null}">
            			Edit Student
            		</c:if>
						<c:if test="${student == null}">
            			Add New Student
            		</c:if>
					</h2>
				</caption>

				<c:if test="${student.studentId != null}">
					<input type="hidden" name="id"
						value="<c:out value='${student.studentId}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Student First Name</label> <input type="text"
						value="<c:out value='${student.firstName}' />"
						class="form-control" name="f_name" required="required">
				</fieldset>



				<fieldset class="form-group">
					<label>Student Last Name</label> <input type="text"
						value="<c:out value='${student.lastName}' />"
						class="form-control" name="l_name" required="required">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Age</label> <input type="text"
						value="<c:out value='${student.age}' />"
						class="form-control" name="s_age">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Address</label> <input type="text"
						value="<c:out value='${student.address}' />"
						class="form-control" name="s_address">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Student Phone</label> <input type="text"
						value="<c:out value='${student.phone}' />"
						class="form-control" name="s_phone">
				</fieldset>

				<fieldset class="form-group">
					<label>Student Class</label><br> 
					<select class="custom-select" name="s_class" id="s_class">
						<c:if test="${student.phone != null}">
							<option value="<c:out value='${student.studentId}'/>"><c:out value ='${student.classDetails }' /></option>
						</c:if>
						<option value=1>I</option>
						<option value=2>II</option>
						<option value=3>III</option>
						<option value=4>IV</option>
						<option value=5>V</option>
						<option value=6>VI</option>
						<option value=7>VII</option>
						<option value=8>VIII</option>
						<option value=9>IX</option>
						<option value=10>X</option>
						
					</select>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>



</body>


</html>

