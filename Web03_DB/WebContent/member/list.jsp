<%@page import="test.member.dto.MemberDto"%>
<%@page import="java.util.List"%>
<%@page import="test.member.dao.MemberDao"%>
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
	MemberDao dao = MemberDao.getInstance();
	//회원 목록 얻어오리
	List<MemberDto> list =dao.getList();
%>
	<div class="container">
		<div class="navbar navbar-expand-sm navbar-dark bg-primary">
		<a href="${pageContext.request.contextPath }/" class="navbar-brand">Acorn</a>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list2.jsp">Todo2</a></li>
		</ul>
		</div>
		<h1>회원 목록입니다.</h1>
		<table class="table table-sm table-striped table-hover">
			<thead class="thead-dark">
				<tr>
					<th>번호</th>
					<th>이름</th>
					<th>주소</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>
			</thead>
			<tbody>
				<% for(MemberDto tmp:list){ %>
					<tr>
						<td><%=tmp.getNum() %></td>
						<td><%=tmp.getName() %></td>
						<td><%=tmp.getAddr() %></td>
						<td><a href="updateform.jsp?num=<%=tmp.getNum() %>" class="badge badge-danger">수정</a></td>
						<td><a href="delete.jsp?num=<%=tmp.getNum() %>" class="badge badge-danger">삭제</a></td>
					</tr>
				<%} %>
			</tbody>
		</table>
		<a href="insertform.jsp">회원 추가 하러 가기</a>
	</div>
</body>
</html>