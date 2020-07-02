package test.servlet;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import test.todo.dao.TodoDao;
import test.todo.dto.TodoDto;

@WebServlet("/send")
public class SendServlet extends HttpServlet{
	@Override
	protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		req.setCharacterEncoding("utf-8");
		String work = req.getParameter("work");
		TodoDao dao = TodoDao.getInstance();
		TodoDto dto = new TodoDto();
		dto.setWork(work);
		dao.insert(dto);
		resp.sendRedirect("/Web03_DB/todo/list.jsp");
	}
	
}
