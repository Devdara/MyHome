<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>        
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<meta name="viewport" content="width=device-width", initial-scale="1">
<script src="resources/js/jquery-1.11.0.min.js"></script>
<script src="resources/js/bootstrap.js"></script>
<script src="resources/ckeditor/ckeditor.js"></script>
<link rel="stylesheet" href="resources/css/bootstrap.css">
<style>
	html, body{ width: 100%; height: 100%; }
	/* Set black background color, white text and some padding */
    footer{
      background-color: #424242;
      color: white;
      padding: 10px;
    }
    .btn-default {
      background: #424242;
      color: #fff;
   }
 	.btn-default:hover {
      background: #fff;
      color: #000;
   }
</style>

<script>
	function bbsWrite(){
	}
	
	function bbsBack(){
		history.back();
	}
</script>

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
						<li><a href="bbs1List.do?pNum=1">BBS-1</a></li>
						<li><a href="#">BBS-2</a></li>
						<li><a href="#">BBS-3</a></li>
					</ul>
				</li>
			</ul>
			<ul class="nav navbar-nav navbar-right">
				<c:set var="uvo" value="${sessionScope.loginUser}" />
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
		<form class="content" action="update.do" method="get">
			<table class="table table-bordered">
				<c:forEach items="${bList}" var="row">
				<tr>
					<th>글번호</th>
					<td colspan="3" name="no">${row.no}</td>
				</tr>
				<tr>
					<th>작성자</th>
					<td name="writer">${row.writer}</td>
					<th>작성일</td>
					<td name="date">${row.date}</td>
				</tr>
				<tr>
					<th>제목</th>
					<td colspan="3"><input type="text" class="form-control" id="subject" name="subject" value="${row.subject}"></td>
				</tr>
				
				<tr>
					<td colspan="4">
						<form>
	            			<textarea name="editor1" id="editor1" rows="10" cols="80">
	                			${row.content}
	            			</textarea>
	            			<script>
	                			// Replace the <textarea id="editor1"> with a CKEditor
	                			// instance, using default configuration.
	                			CKEDITOR.replace( 'editor1' );
	            			</script>
	        			</form>
					</td>
				</tr>
				</c:forEach>
				<tr align="center">
					<td  colspan="4">
						<button type="submit" class="btn btn-default" onclick="bbsWrite()">수정</button>
						<button type="button" class="btn btn-default" onclick="bbsBack()">취소</button>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<footer class="container-fluid text-center">
  		<p>Footer Text</p>
	 </footer>
</body>
</html>