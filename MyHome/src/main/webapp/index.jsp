<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="true"%>      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<title>Insert title here</title>
<style>
	/* Set black background color, white text and some padding */
    footer{
      background-color: #424242;
      color: white;
      padding: 10px;
    }
  
</style>
</head>
<body>
	
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="index.jsp">Test</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">BBS<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="bbs1List.do?pNum=1">BBS-1</a></li>
						<li><a href="#">BBS-2</a></li>
						<li><a href="#">BBS-3</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<li><a href="join.do"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
				<li><a href="login.do"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
			</ul>
		</div>
	</nav>
	
	<div class="container-fluid bg-1 text-center">    
	    <img src="resources/img/blackTri.jpg" class="img-responsive img-rounded margin" style="display:inline" alt="Bird" width="350" height="350">
	    <h1>Welcome</h1>
 		 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit
	 		   , sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. 
	 		   Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. 
	 		  	Excepteur sint occaecat cupidatat non proident, 
	 		    sunt in culpa qui officia deserunt mollit anim id est laborum consectetur adipiscing elit, 
	 		    sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, 
	 		    quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.</p>
	 </div>
	 
	 <footer class="container-fluid text-center">
  		<p>Footer Text</p>
	 </footer>
	
</body>
</html>