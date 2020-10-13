 
package com.model;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class FileDAO {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
	


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
	
	public int upload(String fileName, String fileRealName) {
		getConn();
		String SQL = "INSERT INTO FILES VALUES (?,?)";

		try {

			PreparedStatement psmt = conn.prepareStatement(SQL);

			psmt.setString(1,  fileName);

			psmt.setString(2,  fileRealName);

			return psmt.executeUpdate();

		} catch(Exception e) {

			e.printStackTrace();

		}

		return -1;

	}

}