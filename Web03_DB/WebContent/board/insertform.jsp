<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/insertform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="navbar navbar-expand-sm navbar-dark bg-primary">
	<a class="navbar-brand" href="${pageContext.request.contextPath }/">Acorn</a>

	<ul class="navbar-nav">
		<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
		<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
	</ul>

	</div>
	<div class="container">
	<ol class="breadcrumb">
		<li class="breadcrumb-item"><a href="../index.jsp">Home</a></li>
		<li class="breadcrumb-item"><a href="../board/list.jsp">회원목록</a></li>
		<li class="breadcrumb-item active">회원추가</li>
	</ol>
	<h1>새글 작성 폼 입니다.</h1>
	<form action="insert.jsp" method="post">
		<div class="form-group">
			<label for="writer">작성자</label>
			<input class="form-control" type="text" name="writer" id="writer" /> <br />
		</div>
		<div class="form-group">
			<label for="title">제목</label>
			<input class="form-control" type="text" name="title" id="title" /> <br />
		</div>
		<div class="form-group">
			<label for="content">내용</label> <br />
			<textarea class="form-control" name="content" id="content" cols="20" rows="5"></textarea> <br />
		</div>
		<button class="btn btn-primary" type="submit" >등록</button>
		<button class="btn btn-warning" type="reset" onclick="location.href='../board/list.jsp'">취소</button>
	</form>
	</div>
</body>
</html>