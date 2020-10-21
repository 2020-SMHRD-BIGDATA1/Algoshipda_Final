package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;
import java.util.ArrayList;

public class FileDAO {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;

	// �����ڸ� ���� db���� ����

	// �����ڸ� ���� db���� ����

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

	public int upload(String fileRealName) {
		getConn();
		int cnt = 0;
		String SQL = "INSERT INTO FILES VALUES (picture_index.NEXTVAL,?,sysdate,1)";

		try {
			PreparedStatement psmt = conn.prepareStatement(SQL);
			psmt.setString(1, fileRealName);
			return psmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}
		return cnt;

	}

	public ArrayList<KOREAPLACE> rec_select() {

		getConn();

		ArrayList<KOREAPLACE> list = new ArrayList<KOREAPLACE>();

		String sql = "select * from KOREAPLACE";

		try {
			psmt = conn.prepareStatement(sql);
			rs = psmt.executeQuery();
			while (rs.next()) {

				int KOREA_index = rs.getInt(1);
				String KOREAtitle = rs.getString(2);
				String KOREA_addr = rs.getString(3);
				String KOREA_text = rs.getString(4);
				String KOREA_URL = rs.getString(5);
				String KOREA_tour = rs.getString(6);
				String KOREAIMGNAME = rs.getString(7);
				KOREAPLACE s = new KOREAPLACE(KOREA_index, KOREAtitle, KOREA_addr, KOREA_text, KOREA_URL, KOREAIMGNAME,
						KOREA_tour);
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

//   private void getConn() {
//         try {
//            Class.forName("oracle.jdbc.driver.OracleDriver");
//            String db_url = "jdbc:oracle:thin:@localhost:1521:xe";
//            String db_id = "hr";
//            String db_pw = "hr";
//            conn = DriverManager.getConnection(db_url, db_id, db_pw);
//         } catch (ClassNotFoundException e) {
//            e.printStackTrace();
//         } catch (SQLException e) {
//            e.printStackTrace();
//         }
//
//      }

//	public int upload(String fileName, String fileRealName) {
//		getConn();
//		int cnt = 0;
//		String SQL = "INSERT INTO FILES VALUES (picture_index.NEXTVAL,?,?,sysdate)";
//
//		try {
//
//			PreparedStatement psmt = conn.prepareStatement(SQL);
//
//			psmt.setString(1, fileName);
//
//			psmt.setString(2, fileRealName);
//
//			return psmt.executeUpdate();
//
//		} catch (Exception e) {
//
//			e.printStackTrace();
//
//		}
//		return cnt;
//
//	}

//	public int upload(String fileName, String fileRealName) {
//		getConn();
//		int cnt = 0;
//		String SQL = "INSERT INTO FILES VALUES (picture_index.NEXTVAL,?,?,sysdate)";
//
//		try {
//
//			PreparedStatement psmt = conn.prepareStatement(SQL);
//
//			psmt.setString(1, fileName);
//
//			psmt.setString(2, fileRealName);
//
//			cnt = psmt.executeUpdate();
//
//		} catch (Exception e) {
//
//			e.printStackTrace();
//
//		}
//		return cnt;
//
//	}

//	public ArrayList<SimilarPicture> rec_select() {
//
//		getConn();
//
//		ArrayList<SimilarPicture> list = new ArrayList<SimilarPicture>();
//
//		String sql = "select * from SimilarPicture";
//
//		try {
//			psmt = conn.prepareStatement(sql);
//			rs = psmt.executeQuery();
//			while (rs.next()) {
//				int picture_index = rs.getInt(1);
//				String picturewhere = rs.getString(2);
//				String fileName = rs.getString(3);
//				SimilarPicture s = new SimilarPicture(picture_index, picturewhere, fileName);
//				list.add(s);
//			}
//		} catch (SQLException e) {
//			e.printStackTrace();
//		} finally {
//			close();
//		}
//		return list;
//
//	}

}