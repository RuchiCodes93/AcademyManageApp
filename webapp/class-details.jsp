<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
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
				<a href="Welcome.jsp" class="navbar-brand"> Academy Management
					App </a>
			</div>

			<ul class="navbar-nav">
				<li><a href="<%=request.getContextPath()%>/showWelcome"
					class="nav-link">Class Details</a></li>
			</ul>

			<ul class="navbar-nav  ml-auto">
				<li class="nav-link active"><a href="Logout">Logout</a></li>
			</ul>
		</nav>
	</header>
	<br>


	<div class="container">
		<div class="row justify-content-center">
			<div class="col-lg-12">
				<div class="card">
					<div class="card-header">Class Details</div>
					<div class="card-body">
						<form action="showClassDetails" method="get">


							<div class="form-group row">
								<label for="classname"
									class="col-md-4 col-form-label text-md-right">Class</label>
								<div class="col-md-6">
									<select class="form-control form-control-sm" id="className" name = "className">
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
								</div>
							</div>
							
							<div class="form-group row">
								<label for="Subject"
									class="col-md-4 col-form-label text-md-right">Subject</label>
								<div class="col-md-6">
									<select class="form-control form-control-sm" id="classSubject" name ="classSubject">
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
								</div>
							</div>	


							<div class="row justify-content-center">
								<div class="col-md-6 offset-md-4">
									<button type="submit" class="btn btn-primary" id="btnSubmit">
										Submit</button>

								</div>
							</div>
					</div>

					</form>
				</div>
				<div id="dataResult">
					<table class="table table-striped" id ="details">
						<thead>
							<tr>
								<th scope="col">Class Name</th>
								<th scope="col">Student First</th>
								<th scope="col">Student Last</th>
								<th scope="col">Student Phone</th>
								<th scope="col">Student Address</th>
								<th scope="col">Teacher Name</th>
								<th scope="col">Teacher Subject</th>
								<th scope="col">Teacher Address</th>
							</tr>
							<tbody id ="table1"></tbody>
						
						</thead>
					
					</table>
				</div>
			</div>
		</div>
	</div>



	<script type="text/javascript">
	$(document).ready(function() {
		$('#details').hide();
		$('#btnSubmit').click(function(e) {
		    e.preventDefault();
			var className = $('#className').val();
			var classSubject =$('#classSubject').val();
// 			var data1 = "className=" + className;
// 			var data2 = "classSubject=" +classSubject;
			$.ajax({
				type : 'GET',
				url : '/jsp-servlet-jdbc-mysql/showClassDetails',
				data: "className="+className+"&classSubject="+classSubject,
				success : function(result) {
					
					if(result.length>0){
						
						//alert(result[0].ClassName);
						var len = result.length;
						var txt = "";
						for(var i=0; i< len;i++){
							
							
							txt+="<tr><td>"+result[i].ClassName+"</td><td>"+result[i].studentFirst+"</td><td>"+result[i].studentLast+"</td><td>"+result[i].studentPhone+"</td><td>"+result[i].studentAddress+"</td><td>"+result[i].teacherName+"</td><td>"+result[i].teacherSubject+"</td><td>"+result[i].teacherAddress+"</td></tr>";
						}
						
						if(txt != ""){
							
	                        $("#table1").empty().append(txt)
	                        
	                    }
						
						$("#details").show();
						
					}
					
				}
			});
			
		});

	});
</script>

</body>
</html>