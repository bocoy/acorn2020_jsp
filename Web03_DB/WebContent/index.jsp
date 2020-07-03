<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>인덱스 페이지 입니다.</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="container">
		<div class="navbar navbar-expand-sm navbar-dark bg-primary">
			<a href="${pageContext.request.contextPath }/" class="navbar-brand">Acorn</a>
			<ul class="navbar-nav">
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
				<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list2.jsp">Todo2</a></li>
			</ul>
		</div>
		<h1>인덱스 페이지 입니다.</h1>
		<ul>
			<li><a href="member/list.jsp" class="badge badge-primary">회원 목록 보기</a></li>
			<li><a href="todo/list.jsp" class="badge badge-primary">할일 목록 보기</a></li>
			<li><a href="todo/list2.jsp" class="badge badge-primary">할일 목록 보기2</a></li>
		</ul>
	</div>
</body>
</html>