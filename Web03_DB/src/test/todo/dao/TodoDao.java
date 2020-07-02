package test.todo.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import test.todo.dto.TodoDto;
import test.util.DbcpBean;

public class TodoDao {
	private static TodoDao dao;
	
	private TodoDao() {}
	
	public static TodoDao getInstance() {
		if(dao==null) {
			dao = new TodoDao();
		}
		return dao;
	}
	
	public List<TodoDto> getList(){
		List<TodoDto> list = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		try {
			conn = new DbcpBean().getConn();
			String sql = "SELECT num,work,TO_CHAR(regdate,'YYYY\\\"년\\\"MM\\\"월\\\"DD\\\"일\\\" AM HH:MI') regdate"
					+ " FROM todo"
					+ " ORDER BY num ASC";
			pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				TodoDto dto = new TodoDto();
				dto.setNum(rs.getInt("num"));
				dto.setWork(rs.getString("work"));
				dto.setRegdate(rs.getString("regdate"));
				list.add(dto);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(rs!=null)rs.close();
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		return list;
	}
	
//	public boolean insert(String content) {
//		Connection conn = null;
//		PreparedStatement pstmt = null;
//		int flag = 0;
//		try {
//			conn = new DbcpBean().getConn();
//			String sql = "INSERT INTO todo"
//					+ " (num,work,regdate)"
//					+ " VALUES(todo_seq.NEXTVAL,?,SYSDATE)";
//			pstmt=conn.prepareStatement(sql);
//			pstmt.setString(1, content);
//			flag = pstmt.executeUpdate();
//		}  catch (Exception e) {
//			e.printStackTrace();
//		}finally {
//			try {
//				if(pstmt!=null)pstmt.close();
//				if(conn!=null)conn.close();
//			} catch (Exception e2) {}
//		}
//		if(flag>0) {
//			return true;
//		}else {
//			return false;
//		}
//	}
	
	public boolean insert(TodoDto dto) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int flag = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "INSERT INTO todo"
					+ " (num,work,regdate)"
					+ " VALUES(todo_seq.NEXTVAL,?,SYSDATE)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1, dto.getWork());
			flag = pstmt.executeUpdate();
		}  catch (Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			} catch (Exception e2) {}
		}
		if(flag>0) {
			return true;
		}else {
			return false;
		}
	}
	
	public boolean delete(int num) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		int flag=0;
		try {
			conn=new DbcpBean().getConn();
			//실행할 sql 문 준비하기 
			String sql="DELETE FROM todo"
				+ " WHERE num=?";
			pstmt=conn.prepareStatement(sql);
			//? 에 바인딩 할 값이 있으면 바인딩한다.
			pstmt.setInt(1, num);
			//sql  문 수행하고 update or insert or delete 된 row 의 갯수 리턴받기 
			flag=pstmt.executeUpdate();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			try {
				if(pstmt!=null)pstmt.close();
				if(conn!=null)conn.close();
			}catch(Exception e) {}
		}
		if(flag>0) {
			return true;
		}else {
			return false;
		}
	}
	
}
