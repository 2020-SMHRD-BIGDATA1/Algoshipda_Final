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

	// 생성자를 통해 db연결 해줌

	// 생성자를 통해 db연결 해줌

	private void getConn() {
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

	public int upload(String fileName) {
		getConn();
		int cnt = 0;
		String SQL = "INSERT INTO FILES VALUES (picture_index.NEXTVAL,?,sysdate,1)";

		try {

			PreparedStatement psmt = conn.prepareStatement(SQL);

			psmt.setString(1, fileName);

			return psmt.executeUpdate();

		} catch (Exception e) {

			e.printStackTrace();

		}
		return cnt;

	}

	public ArrayList<KOREAPLACE> rec_select() {

		getConn();

		ArrayList<KOREAPLACE> list = new ArrayList<KOREAPLACE>();

		String sql = "select *from KOREAPLACE where KOREAtitle = ? ";

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
				KOREAPLACE s = new KOREAPLACE(KOREA_index, KOREAtitle, KOREA_addr, KOREA_text, KOREA_URL, KOREA_tour,
						KOREAIMGNAME);
				list.add(s);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close();
		}

		return list;
	}

	public OVERSEAPLACE searchForeign(String OVERSEAPLACE) {

		OVERSEAPLACE dto = null;

		getConn();
		System.out.print("dao");
		String sql = "select * from OVERSEAPLACE where OVERSEAtitle = ?";
		try {
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, OVERSEAPLACE);
			rs = psmt.executeQuery();
			if (rs.next()) {
				int OVERSEA_index = rs.getInt(1);
				String OVERSEAtitle = rs.getString(2);
				String OVERSEA_addr = rs.getString(3);
				String OVERSEA_text = rs.getString(4);
				String OVERSEA_URL = rs.getString(5);
				String OVERSEAIMGNAME = rs.getString(6);
				System.out.print("들어왓다");
				dto = new OVERSEAPLACE(OVERSEA_index, OVERSEAtitle, OVERSEA_addr, OVERSEA_text, OVERSEA_URL,
						OVERSEAIMGNAME);

			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;

	}

	public KOREAPLACE searchKorea(String searchKorea) {

		KOREAPLACE dto = null;

		getConn();

		try {
			String sql = "select * from KOREAPLACE where KOREAtitle = ?";
			psmt = conn.prepareStatement(sql);
			psmt.setString(1, searchKorea);
			rs = psmt.executeQuery();
			if (rs.next()) {
				int KOREA_index = rs.getInt(1);
				String KOREAtitle = rs.getString(2);
				String KOREA_addr = rs.getString(3);
				String KOREA_text = rs.getString(4);
				String KOREA_URL = rs.getString(5);
				String KOREA_tour = rs.getString(6);
				String KOREAIMGNAME = rs.getString(7);

				dto = new KOREAPLACE(KOREA_index, KOREAtitle, KOREA_addr, KOREA_text, KOREA_URL, KOREA_tour,
						KOREAIMGNAME);

			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		} finally {
			close();
		}

		return dto;
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

//   public int upload(String fileName, String fileRealName) {
//      getConn();
//      int cnt = 0;
//      String SQL = "INSERT INTO FILES VALUES (picture_index.NEXTVAL,?,?,sysdate)";
//
//      try {
//
//         PreparedStatement psmt = conn.prepareStatement(SQL);
//
//         psmt.setString(1, fileName);
//
//         psmt.setString(2, fileRealName);
//
//         return psmt.executeUpdate();
//
//      } catch (Exception e) {
//
//         e.printStackTrace();
//
//      }
//      return cnt;
//
//   }

//   public int upload(String fileName, String fileRealName) {
//      getConn();
//      int cnt = 0;
//      String SQL = "INSERT INTO FILES VALUES (picture_index.NEXTVAL,?,?,sysdate)";
//
//      try {
//
//         PreparedStatement psmt = conn.prepareStatement(SQL);
//
//         psmt.setString(1, fileName);
//
//         psmt.setString(2, fileRealName);
//
//         cnt = psmt.executeUpdate();
//
//      } catch (Exception e) {
//
//         e.printStackTrace();
//
//      }
//      return cnt;
//
//   }

//   public ArrayList<SimilarPicture> rec_select() {
//
//      getConn();
//
//      ArrayList<SimilarPicture> list = new ArrayList<SimilarPicture>();
//
//      String sql = "select * from SimilarPicture";
//
//      try {
//         psmt = conn.prepareStatement(sql);
//         rs = psmt.executeQuery();
//         while (rs.next()) {
//            int picture_index = rs.getInt(1);
//            String picturewhere = rs.getString(2);
//            String fileName = rs.getString(3);
//            SimilarPicture s = new SimilarPicture(picture_index, picturewhere, fileName);
//            list.add(s);
//         }
//      } catch (SQLException e) {
//         e.printStackTrace();
//      } finally {
//         close();
//      }
//      return list;
//
//   }

}