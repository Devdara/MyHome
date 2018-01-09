<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<style>
	html, body{ width: 100%; height: 100%; }
	
	/* Set black background color, white text and some padding */
    footer{
      background-color: #424242;
      color: white;
      padding: 10px;
    }
    
</style>

<title>Insert title here</title>
</head>
<body>
	
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="main.do">Test</a>
			</div>
			<ul class="nav navbar-nav">
				<li class="dropdown"><a class="dropdown-toggle" data-toggle="dropdown" href="#">BBS<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="/std/bbs1List.do?pNum=1">BBS-1</a></li>
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
	
	<div class="center-block">
		<div class="container">
			<div class="col-lg-4"></div>
			<div class="col-lg-4">
				<div class="jumbotron" style="padding-top: 20px;">
					<form method="post" action="loginAction.do">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="이메일" name="useremail" maxlength="20" style="margin-top: 20px;">
						</div>
						<div class="form-group">
							<input type="password" class="form-control" placeholder="비밀번호" name="userpw" maxlength="20">
						</div>
						<input type="submit" class="btn form-control" value="로그인" style="background-color: #585858; color: white;">
					</form>
				</div>
			</div>
			<div class="col-lg-4"></div>
		</div>
	</div>
	
	<footer class="container-fluid text-center">
  		<p>Footer Text</p>
	 </footer>
	
</body>
</html>