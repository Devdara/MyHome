package com.spring.std;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import com.spring.vo.UserVO;

public class StudyDAO {

	private Connection conn;
	private PreparedStatement pstmt;
	private ResultSet rs;
	
	public int join(UserVO user){
		
		System.out.println("StudyDAO클래스 join()");
		
		String SQL = "INSERT INTO user VALUES(?, ?, ?, ?, ?)";
		
		try {
			conn = ConnDB.getConnection();
			pstmt = conn.prepareStatement(SQL);
			pstmt.setString(1, user.getUseremail());
			pstmt.setString(2, user.getUserpw());
			pstmt.setString(3, user.getUsername());
			pstmt.setString(4, user.getUsergender());
			return pstmt.executeUpdate();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return -1; // DB오류
	}
	
}//