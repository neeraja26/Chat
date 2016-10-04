<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<link href="resources/css/login.css" rel="stylesheet">
<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/App.js"></script>

<script type="text/javascript" src="${pageContext.request.contextPath}/resources/js/AngularControllers/Home.js"></script>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>
<form action="perform_login" method="post">
					
<nav class="navbar navbar-inverse navbar-fixed-top" >
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand " style="color: white">CHAT</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<sec:authorize access="isAuthenticated()">
					<li><a style="color: white">Hello  <b><sec:authentication property="principal.username" /></b></a></li>
						<li><a href="perform_logout"><span
								class="glyphicon glyphicon-log-out"></span></a></li>
					</sec:authorize>
					<sec:authorize access="!isAuthenticated()">
						<li><a href="#log" data-toggle="modal"
							data-target="#login"><span
								class="glyphicon glyphicon-log-in"></span></a></li>
						<li><a href="#reg" data-toggle="modal"
							data-target="#registration"> <span
								class="glyphicon glyphicon-user"></span>
						
					

<div class="container">
	<div class="row">
    	<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-info" style="margin-top:50px;">
                <div class="panel-heading"><h4 class="text-center">LOGIN</h4></div>
                <div class="panel-body">
                    <form>
                        <div class="form-group">
                            <label for="user">UserName</label>
                            <input type="text" class="form-control"
									placeholder="Enter Username" id="username" name="username">
							</div>
                        
                        <div class="form-group">
                            <label for="pass">Password</label>
                           <input type="password" class="form-control"
									placeholder="Enter Password" id="password" name="password" >
							</div>
                        
                        <button type="submit" class="btn btn-success btn-block">login</button>
                    </form>
                </div>
            </div>
            
        </div>
	</div>
</div>

<form action="perform_login" method="post">
<div class="container">
	<div class="row">
    	<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-info" style="margin-top:50px;">
                <div class="panel-heading"><h4 class="text-center">REGISTER</h4></div>
                <div class="panel-body">
                    <form>
                    <div class="form-group">
                            <label for="user">Name</label>
                    <input type="text" class="form-control" placeholder="Name"
									data-ng-model="name">
							</div>
                        <div class="form-group">
                            <label for="user">UserName</label>
                           <input type="text" class="form-control"
									placeholder="Enter Username" id="username" name="username" data-ng-model="username">
							</div>
                        
                        <div class="form-group">
                            <label for="pass">Password</label>
                           <input type="password" class="form-control"
									placeholder="Enter Password" id="password" name="password" data-ng-model="password">
							</div>
                        <div class="form-group">
                            <label for="user">Confirm Password</label>
                            <input type="password" class="form-control"
									data-ng-model="Confirm_Password"
									placeholder="Re Enter Password">
							</div>
							 <div class="form-group">
                            <label for="user">Email</label>
							<input type="email" class="form-control" placeholder="Email"
									data-ng-model="email">
							</div>
							 <div class="form-group">
                            <label for="user">Mobile Number</label>
                            <input type="text" class="form-control"
									placeholder="Mobile Number" data-ng-model="mobile">
							</div>
							<br>
							<div class="input-group">
								<label class="radio-inline"> <input type="radio"
									name="optradio" value="Male" data-ng-model="gender">Male
								</label> <label class="radio-inline"> <input type="radio"
									value="Female" name="optradio" data-ng-model="gender">Female
								</label>
							</div>
						
                        
                        <button type="submit" class="btn btn-success btn-block">Register</button>
                    </form>
                </div>
            </div>
            
        </div>
	</div>
</div>
</a></li>
					</sec:authorize>
				</ul>
			</div>
		</div>
	</nav>

<c:choose>
		<c:when test="${BlogClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Blog.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ForumClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Forum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${IndividualForum}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/IndividualForum.jsp">
				</c:import>
			</div>
		</c:when>
		<c:when test="${ChatClicked}">
			<div class="container">
				<c:import url="/WEB-INF/jsp/Chat.jsp">
				</c:import>
			</div>
		</c:when>
	</c:choose>
	
	<script type="text/javascript">
		$(document).ready(function() {
			if (window.location.href.indexOf('#login') != -1) {
				$('#login').modal('show');
			}
		});
	</script>
</body>
</html>