package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.java.www.dto.BoardDto;

public class BoardDao {
	
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource dataSource;
	String query;
	int bno, bgroup, bstep, bindent, bhit;
	String btitle, bcontent, id, bfile;
	Timestamp bdate;
	
	// 생성자
	public BoardDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle21");
		} catch (Exception e) {e.printStackTrace();}
	}
	
	// 메소드선언
	public List<BoardDto> boardList(){
		List<BoardDto> list = new ArrayList<BoardDto>();
		try {
			conn = dataSource.getConnection();
			query = "select * from board order by";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery(); // select  insert, update, delete - executeUpdate()
			
			while(rs.next()) {
				bno = rs.getInt("bno");
				btitle = rs.getString("btilte");
				bcontent = rs.getString("bcontent");
				id = rs.getString("id");
				bgroup = rs.getInt("bgroup");
				bstep = rs.getInt("bstep");
				bindent = rs.getInt("bindent");
				bhit = rs.getInt("bhit");
				bfile = rs.getString("bfile");
				bdate = rs.getTimestamp("bdate");
				list.add(new BoardDto(bno, btitle, bcontent, id, bgroup, bstep, bindent, bhit, bfile, bdate));
				
			}
			
			
		}catch (SQLException e) {e.printStackTrace();
		}finally {
			try {
				if(rs!=null) rs.close();
				if(pstmt!=null) pstmt.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();
			}
		
		
		return list;
	}
	
	
	}
}
