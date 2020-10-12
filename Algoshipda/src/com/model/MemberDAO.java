package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.model.MemberDTO;


public class MemberDAO {
	private Connection conn;
	private PreparedStatement psmt;
	private ResultSet rs;

	private void getConnection() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
			String db_id = "hr";
			String db_pw = "hr";
			conn = DriverManager.getConnection(db_url, db_id, db_pw);
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}

	private void close() {
		try {
			if (rs != null) {
				rs.close();
			}
			if (psmt != null) {
				psmt.close();
			}
			if (conn != null) {
				conn.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
	}
	
	public int join(MemberDTO dto) {

		int cnt = 0;

		try {
			getConnection();
			String sql = "INSERT INTO MEMBERS VALUES(?,?,?,?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMember_id());
			psmt.setString(2, dto.getMember_pw());
			psmt.setString(3, dto.getMember_addr());
			psmt.setString(4, dto.getMember_tel());
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	public boolean idCheck(String member_id) {
		boolean check = false;

		getConnection();
		try {
			
			String sql = "select member_id from Members where member_id=?";
			psmt = conn.prepareStatement(sql);

			psmt.setString(1, member_id);

			rs = psmt.executeQuery();

			if (rs.next()) {
				check = true;
			} else {
				check = false;
			}
		} catch (SQLException e) {

			e.printStackTrace();
		} finally {
			close();
		}

		return check;
	}
	public MemberDTO login(MemberDTO dto) {
		MemberDTO info = null;
		
		getConnection();
		
		try {
			String sql = "SELECT * FROM MEMBERS WHERE member_id = ? AND member_pw = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, dto.getMember_id());
			psmt.setString(2, dto.getMember_pw());
			
			rs = psmt.executeQuery();
			if(rs.next()) {
				
				String member_id = rs.getString(1);
				String member_tel = rs.getString(2);
				String member_addr = rs.getString(3);
				
				
				info = new MemberDTO(member_id,member_addr,member_tel );
			
			}
			
		} catch (SQLException e) {
			e.printStackTrace();
		}finally {
			close();
		}
		return info;
	}

	
	
	
}
