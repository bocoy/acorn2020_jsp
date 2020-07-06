<%@page import="test.board.dto.BoardDto"%>
<%@page import="test.board.dao.BoardDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	int num=Integer.parseInt(request.getParameter("num"));
	BoardDto dto = BoardDao.getInstance().getData(num);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/board/updateform.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
	<div class="container">
	<h1>수정하는 폼</h1>
	<form  action="update.jsp" method="post">
	<input type="hidden" name="num" value="<%=dto.getNum() %>"/>
	<div class="form-group">
		<label for="num">번호</label>
		<input class="form-control" type="text" id="num" name="num" value="<%=dto.getNum() %>" disabled/><br />
	</div>
	<div class="form-group">
		<label for="writer">작성자</label>
		<input class="form-control" type="text" id="writer" name="writer" value="<%=dto.getWriter() %>"/><br />
	</div>
	<div class="form-group">
		<label for="title">제목</label>
		<input class="form-control" type="text" id="title" name="title" value="<%=dto.getTitle() %>"/><br />
	</div>
	<div class="form-group">
		<label for="content">내용</label><br />
		<textarea name="content" id="content" cols="20" rows="5" class="form-control"><%=dto.getContent() %></textarea><br />
	</div>
	<button type="submit" class="btn btn-primary">수정확인</button>
	<button type="reset" class="btn btn-warning" onclick="location.href='list.jsp'">취소</button>
	</form>
	</div>
</body>
</html>