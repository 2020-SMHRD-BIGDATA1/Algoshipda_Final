package bbs;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class BbsDAO {

	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
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
	   
	   
	   public String getDate() {
		   getConn();
		   String sql = "SELECT NOW()";
		   try {
			   
			   psmt = conn.prepareStatement(sql);
			   rs = psmt.executeQuery();
			   if(rs.next()) {
				   return rs.getString(1);
			   }
		   }catch (Exception e) {
			   e.printStackTrace();
		   }finally {
			   close();
		   }
		return "";
		
	   }
	   
	   public int getNext() {
		   getConn();
		   String sql = "SELECT bbsID FROM BBS ORDER BY bbsID DESC";
		   try {
			   PreparedStatement psmt = conn.prepareStatement(sql);
			   rs = psmt.executeQuery();
			   if(rs.next()) {
				   return rs.getInt(1) + 1;
			   }
			   return 1;
		   }catch (Exception e) {
			   e.printStackTrace();
		   }finally {
			   close();
		   }
		return -1;
		
	   }
	   
	   public int write(String bbsTitle, String member_id, String bbsContent) {
		   getConn();
		   String sql = "INSERT INTO BBS VALUES(?, ?, ?, ?, ?, ?)";
		   try {
			   PreparedStatement psmt = conn.prepareStatement(sql);
			   psmt.setInt(1, getNext());
			   psmt.setString(2, bbsTitle);
			   psmt.setString(3, member_id);
			   psmt.setString(4, getDate());
			   psmt.setString(5, bbsContent);
			   psmt.setInt(6, 1);
			   
			   return psmt.executeUpdate();
		   }catch (Exception e) {
			   e.printStackTrace();
		   }finally {
			   close();
		   }
		return -1;
	   }
	   
	   public ArrayList<Bbs> getList(int pageNumber) {
		   getConn();
		   String sql = "select * from (select * from bbs where bbsid < ? and bbsavailable = 1 order by bbsid desc) where rownum <= 10";
		   ArrayList<Bbs> list = new ArrayList<Bbs>();
		   try {
			   PreparedStatement psmt = conn.prepareStatement(sql);
			   psmt.setInt(1, getNext() - (pageNumber - 1) * 10);
			   rs = psmt.executeQuery();
			   while (rs.next()) {
				   Bbs bbs = new Bbs();
				   bbs.setBbsID(rs.getInt(1));
				   bbs.setBbsTitle(rs.getString(2));
				   bbs.setMember_id(rs.getString(3));
				   bbs.setBbsDate(rs.getString(4));
				   bbs.setBbsContent(rs.getString(5));
				   bbs.setBbsAvailable(rs.getInt(6));
				   list.add(bbs);
			   }			   
		   }catch (Exception e) {
			   e.printStackTrace();
		   }finally {
			   close();
		   }
		  
		return list;
	   }
	   
	   public Bbs getBbs(int bbsID) {
		   getConn();
		   String sql = "SELECT * FROM BBS WHERE bbsID = ?";
		   try {
			   PreparedStatement psmt = conn.prepareStatement(sql);
			   psmt.setInt(1, bbsID);
			   rs = psmt.executeQuery();
			   if (rs.next()) {
				   Bbs bbs = new Bbs();
				   bbs.setBbsID(rs.getInt(1));
				   bbs.setBbsTitle(rs.getString(2));
				   bbs.setMember_id(rs.getString(3));
				   bbs.setBbsDate(rs.getString(4));
				   bbs.setBbsContent(rs.getString(5));
				   bbs.setBbsAvailable(rs.getInt(6));
				   return bbs;
			   }			   
		   }catch (Exception e) {
			   e.printStackTrace();
		   }finally {
			   close();
		   }
		   return null;
	   }
	   
	  
}

