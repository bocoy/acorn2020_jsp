<%@page import="test.board.dao.BoardDao"%>
<%@page import="test.board.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/member/list.jsp</title>
<link rel="stylesheet" href="${pageContext.request.contextPath }/css/bootstrap.css" />
</head>
<body>
<%
	//MemberDao 객체의 참조값 얻어오기 
	BoardDao dao=BoardDao.getInstance();
	//회원 목록 얻어오기
	List<BoardDto> list=dao.getList();
%>
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
		<li class="breadcrumb-item active">회원목록</li>
	</ol>
	<h1>회원 목록입니다.</h1>
	<table class="table table-sm">
		<thead class="thead-dark">
			<tr>
				<th>글번호</th>
				<th>작성자</th>
				<th>제목</th>
				<th>내용</th>
				<th>날짜</th>
			</tr>
		</thead>
		<tbody>
		<%for(BoardDto tmp:list){ %>
			<tr>
				<td><%=tmp.getNum() %></td>
				<td><%=tmp.getWriter() %></td>
				<td><a href="detail.jsp?num=<%=tmp.getNum()%>"><%=tmp.getTitle() %></a></td>
				<td><%=tmp.getContent() %></td>
				<td><%=tmp.getRegdate() %></td>

			</tr>
		<%} %>	
		</tbody>
	</table>
	<a href="insertform.jsp">글 추가하기</a>
</div>
</body>
</html>






