package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class jjimDAO {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;

	private void getConn() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			String db_url = "jdbc:oracle:thin:@localhost:1521:hr";
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

	public int jjim(String bookmark) {
		int cnt = 0;
		try {
			getConn();
			String sql = "INSERT INTO JJIM JJIM_TITLE VALUES(?)";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, bookmark);
			cnt = psmt.executeUpdate();

		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return cnt;
	}
	public ArrayList<String> jjimlist() {

		jjimDTO dto = null;
		ArrayList<String> jjim_list = new ArrayList<String>();
		getConn();

		try {
			String sql = "select distinct * from JJIM";
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {
				String jjim_title = rs.getString(1);
				dto = new jjimDTO(jjim_title);
				jjim_list.add(dto.getJJIM_title());
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}
		return jjim_list;
		
	}
}