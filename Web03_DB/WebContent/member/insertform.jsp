<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/insertform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<div class="container">
	<div class="navbar navbar-expand-sm navbar-dark bg-primary">
		<a href="${pageContext.request.contextPath }/" class="navbar-brand">Acorn</a>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list2.jsp">Todo2</a></li>
		</ul>
	</div>
	<form action="insert.jsp" method="post">
	<div class="container border border-primary">
		<h1 class="text-center mb-4">회원 정보 추가</h1>
		<div class="form-group">
			<label for="name">이름</label>
			<input class="form-control" type="text" name="name" id="name" /><br />
		</div>
		<div class="form-group">
			<label for="addr">주소</label>
			<input class="form-control" type="text" name="addr" id="addr" /><br />
		</div>
		<button type="submit" class="btn btn-primary mb-2">추가</button>
		<button type="reset" class="btn btn-warning mb-2">취소</button>
	</div>
	</form>
</div>
</body>
</html>