<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<%@ page session="true" %>    
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
    
    .board{
    	background-color: ##1C1C1C;
    	position:relative;
    	display:inline;
    	width: 200px;
    	height: 200px;
    }
    
</style>
</head>
<body>
	
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="main.do">Test</a>
			</div>
			<ul class="nav navbar-nav">
				<li><a href="#">게시판관리</a></li>
				<li class="dropdown">
					<a class="dropdown-toggle" data-toggle="dropdown" href="#">BBS<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="bbs1List.do?pNum=1">BBS-1</a></li>
						<li><a href="#">BBS-2</a></li>
						<li><a href="#">BBS-3</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:set var="uvo" value="${sessionScope.loginUser}" />
					<c:if test="${sessionScope.loginUser.userlevel == 0}">
						<li><a href="adMain.do">관리자메뉴</a></li>
					</c:if>
				<c:if test="${empty sessionScope.loginUser}">
					<li><a href="join.do"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
					<li><a href="login.do"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
				</c:if>
				<c:if test="${null ne sessionScope.loginUser}">
					<li><a href="#"><span class="glyphicon glyphicon-user">${sessionScope.loginUser.username}님</span></a></li>
					<li><a href="logoutAction.do"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
				</c:if>
			</ul>
		</div>
	</nav>
	 
	 <div class="container-fluid">
		<table class="table table-bordered">
			<tr style="text-align: center;">
				<th>번호</th>
				<th>이름</th>
				<th>사용여부</th>
				<th>관리</th>
			</tr>
			<tr>
				<td></td>
				<td></td>
				<td></td>
				<td></td>
			</tr>
		</table>
	 </div>
	 
	 
	 <footer class="container-fluid text-center">
  		<p>Footer Text</p>
	 </footer>
	
</body>
</html>