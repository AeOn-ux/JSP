package com.java.www.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.List;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import com.java.www.dto.BoardDto;
import com.java.www.dto.MemberDto;

/// db 연결 정보
public class BoardDao {

	// db 연결 정보 선언
	Connection conn;
	PreparedStatement pstmt;
	ResultSet rs;
	DataSource dataSource;
	String query;
	// dto에 맞는 변수
	int bno,bgroup,bstep,bindent,bhit;
	String btitle,bcontent,id,bfile;
	Timestamp bdate;
	
	public BoardDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource)context.lookup("java:comp/env/jdbc/Oracle21");
		} catch (NamingException e) {e.printStackTrace();
		}
	}
	
	//회원 전체리스트 가져오기
	public List<BoardDto> BoardList(){
		System.out.println("BoardList");
		List<BoardDto> list = new ArrayList<BoardDto>();
		try {
			conn = dataSource.getConnection();
			// 회원 전체 리스트
			query = "select * from board";
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				bno = rs.getInt("bno");
				btitle = rs.getString("btitle");
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
			
		} catch (Exception e) {e.printStackTrace();
		}finally {
			try {
				if(rs!= null) rs.close();
				if(pstmt != null) pstmt.close();
				if(conn != null) conn.close();
			} catch (Exception e2) {e2.printStackTrace();}
		}
		
		System.out.println("BoardList end");
		return list;
	}
	
}
