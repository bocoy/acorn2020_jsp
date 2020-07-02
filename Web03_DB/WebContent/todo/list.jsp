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
		position: fixed;
		top:0;
		right:0;
		left:0;
		background-color:gray;
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
	table{
		position: absolute;
		top: 6%;
		bottom: 10%;
		z-index: 777;
	}
</style>
</head>
<body>
	<div id = "head" class="text-center border">
		<h1>할일 목록</h1>
	</div>
<%
	TodoDao dao = TodoDao.getInstance();
	List<TodoDto> list = dao.getList();
%>
	<form action="/Web03_DB/send" method="post">
	<table class ="table table-hover table-dark table-striped">
		<thead >
			<tr>
				<th>번 호</th>
				<th>할 일</th>
				<th>날 짜</th>
				<th>삭 제</th>
			</tr>
		</thead>
		<tbody>
			<%for(TodoDto tmp:list){%> 
				<tr>
					<td><%=tmp.getNum()%></td>
					<td><%=tmp.getWork()%></td>
					<td><%=tmp.getRegdate()%></td>
					<td><a href="delete.jsp?num=<%=tmp.getNum()%>">삭제</a></td>
				</tr>
			<%} %>
				<tr>
					<td>
					
					</td>
					<td>
						<input class="form-control" type="text" name="work" id="work" />
					</td>
					<td>
					
					</td>
					<td>
						
					</td>
				</tr>
		</tbody>
	</table>
	<div id="groupbtn">
		<button class="btn btn-secondary btn-block" type="submit">추가하기</button>
	</div>
	</form>
</body>
</html>