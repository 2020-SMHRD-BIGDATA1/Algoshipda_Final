/*
 * package com.model; import java.sql.Connection; import java.sql.DriverManager;
 * import java.sql.PreparedStatement; public class FileDAO {
 * 
 * private Connection conn;
 * 
 * public FileDAO() { try { Class.forName("oracle.jdbc.driver.OracleDriver");
 * String db_url = "jdbc:oracle:thin:@localhost:1521:xe"; String db_id = "hr";
 * String db_pw = "hr"; conn = DriverManager.getConnection(db_url, db_id,
 * db_pw); } catch (Exception e) { e.printStackTrace(); }
 * 
 * }
 * 
 * public int upload(String fileName, String filereal) { String sql =
 * "INSERT INTO files VALUES(?,?)"; try { PreparedStatement psmt =
 * conn.prepareStatement(sql); psmt.setString(1, fileName); psmt.setString(2,
 * filereal); return psmt.executeUpdate(); }catch(Exception e){
 * e.printStackTrace(); } return -1;
 * 
 * }
 * 
 * 
 * }
 */