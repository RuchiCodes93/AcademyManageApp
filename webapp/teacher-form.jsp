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
				<li><a href="<%=request.getContextPath()%>/list"
					class="nav-link">Teachers</a></li>
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
				<c:if test="${teacher != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${teacher == null}">
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${teacher != null}">
            			Edit Teacher
            		</c:if>
						<c:if test="${teacher == null}">
            			Add New Teacher
            		</c:if>
					</h2>
				</caption>

				<c:if test="${teacher != null}">
					<input type="hidden" name="id"
						value="<c:out value='${teacher.teacher_id}' />" />
				</c:if>

				<fieldset class="form-group">
					<label>Teacher Name</label> <input type="text"
						value="<c:out value='${teacher.teacher_name}' />"
						class="form-control" name="t_name" required="required">
				</fieldset>



				<fieldset class="form-group">
					<label>Teacher Subject</label><br> 
					
					
					<select class="custom-select" name="subjectName" id="subjectName">
						<c:if test="${teacher.teacher_class!= null}">
							<option value="<c:out value='${teacher.teacher_subject}'/>"><c:out value ='${teacher.teacher_sub }' /></option>
						</c:if>
						<option value="1">English</option>
						<option value="2">Hindi</option>
						<option value="3">Marathi</option>
						<option value="4">Sanskrit</option>
						<option value="5">Science</option>
						<option value="6">Maths</option>
						<option value="7">Geography</option>
						<option value="8">History</option>
						<option value="9">Civics</option>
						<option value="10">PT</option>
						<option value="11">Drawing</option>
						<option value="12">Dancing</option>
						<option value="13">Work Experience</option>
						<option value="14">Moral Science</option>
						
						
					</select>
				</fieldset>

				<fieldset class="form-group">
					<label>Teacher Salary</label> <input type="text"
						value="<c:out value='${teacher.teacher_salary}' />"
						class="form-control" name="t_sal">
				</fieldset>

				<fieldset class="form-group">
					<label>Teacher Age</label> <input type="text"
						value="<c:out value='${teacher.teacher_age}' />"
						class="form-control" name="t_age">
				</fieldset>

				<fieldset class="form-group">
					<label>Teacher Address</label> <input type="text"
						value="<c:out value='${teacher.teacher_address}' />"
						class="form-control" name="t_address">
				</fieldset>
				
				<fieldset class="form-group">
					<label>Teacher Class</label>
					<select class="custom-select" name="t_class" id="t_class">
						<c:if test="${teacher.teacher_class!= null}">
							<option value="<c:out value='${teacher.teacher_class}'/>"><c:out value ='${teacher.teacher_class }' /></option>
						</c:if>
						<option value="1">I</option>
						<option value="2">II</option>
						<option value="3">III</option>
						<option value="4">IV</option>
						<option value="5">V</option>
						<option value="6">VI</option>
						<option value="7">VII</option>
						<option value="8">VIII</option>
						<option value="9">IX</option>
						<option value="10">X</option>
						
					</select>
				</fieldset>

				<button type="submit" class="btn btn-success">Save</button>
				</form>
			</div>
		</div>
	</div>




</body>


</html>

