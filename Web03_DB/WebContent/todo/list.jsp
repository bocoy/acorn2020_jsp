<%@page import="test.todo.dto.TodoDto"%>
<%@page import="java.util.List"%>
<%@page import="test.todo.dao.TodoDao"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>/todo/list.jsp</title>
<link rel="stylesheet" href="/Web03_DB/css/bootstrap.css" />
<style>
	#head{
		position: relative;
		top:0;
		right:0;
		left:0;
		background-color: gray;
		color: white;	
		text-align: center;
		z-index: 999;
	}
	#groupbtn{
		position: fixed;
		left:0;
		right:0;
		bottom:0;
		z-index: 999;
	}

</style>
</head>
<body>
	<form action="/Web03_DB/send" method="post">
	<div class="container">
	<div class="navbar navbar-expand-sm navbar-dark bg-primary">
		<a href="${pageContext.request.contextPath }/" class="navbar-brand">Acorn</a>
		<ul class="navbar-nav">
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/member/list.jsp">Member</a></li>
			<li class="nav-item"><a class="nav-link active" href="${pageContext.request.contextPath }/todo/list.jsp">Todo</a></li>
			<li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath }/todo/list2.jsp">Todo2</a></li>
		</ul>
	</div>
	<div id = "head" class="text-center border">
		<h1>할일 목록</h1>
	</div>
<%
	TodoDao dao = TodoDao.getInstance();
	List<TodoDto> list = dao.getList();
%>
		<table class ="table table-hover table-dark table-striped table-sm">
		<thead >
			<tr class="d-flex">
				<th class="col-2">번호</th>
				<th class="col-5">내용</th>
				<th class="col-3">등록일</th>
				<th class="col-2">삭제</th>
			</tr>
		</thead>
		<tbody>
			<%for(TodoDto tmp:list){%> 
				<tr class="d-flex">
					<td class="col-2"><%=tmp.getNum() %></td>
					<td class="col-5"><%=tmp.getWork() %></td>
					<td class="col-3"><%=tmp.getRegdate() %></td>
					<td class="col-2"><a href="delete.jsp?num=<%=tmp.getNum() %>" class="badge badge-danger">삭제</a></td>
				</tr>
			<%} %>
				<tr class="d-flex">
					<td class="col-2">
					
					</td>
					<td class="col-5">
						<input class="form-control" type="text" name="work" id="work" />
					</td>
					<td class="col-3">
					
					</td>
					<td class="col-2">
						
					</td>
				</tr>
		</tbody>
	</table>
	</div>
	<div id="groupbtn">
		<button class="btn btn-secondary btn-block" type="submit">추가하기</button>
	</div>
	</form>
</body>
</html>