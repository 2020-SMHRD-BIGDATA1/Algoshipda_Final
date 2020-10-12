package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class BbsDAO {

	private static BbsDAO bbsDao = new BbsDAO();
	private Connection conn;
	private ResultSet rs;
	private PreparedStatement psmt;
	private int result = 0;
	
	private BbsDAO() {
		super();
	}
	public static BbsDAO getInstance() {
		return bbsDao;
	}
	
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
	
	   public int nextval() {
		    getConn();
			StringBuffer query = new StringBuffer();
			query.append("SELECT MAX(bbsId) ").append("FROM bbs");
			
			try {				
				psmt = conn.prepareStatement(query.toString());
				rs = psmt.executeQuery();
				while (rs.next()) {
					result = rs.getInt("MAX(bbsId)");
				}
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return result;
		}
	   
	   public int write(BbsDTO bbsDto) {
			getConn();
			StringBuffer query = new StringBuffer();
			query.append("INSERT INTO bbs ");
			query.append("(bbsId, bbsTitle, bbsContent, bbsDate, bbsHit, member_id) ");
			query.append("VALUES (?, ?, ?, sysdate, 0, ?)");
			try {
				psmt = conn.prepareStatement(query.toString());
				psmt.setInt(1, bbsDto.getBbsId());
				psmt.setString(2, bbsDto.getBbsTitle());
				psmt.setString(3, bbsDto.getBbsContent());
				psmt.setString(4, bbsDto.getMember_id());
				result = psmt.executeUpdate();
			} catch (SQLException e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return result;
		}
	   
	   public List<BbsDTO> selectList(){
			List<BbsDTO> list = new ArrayList<>();
			
			try {
				getConn();
				String sql ="SELECT * FROM bbs ORDER BY bbsId DESC";
				psmt = conn.prepareStatement(sql);
				rs = psmt.executeQuery();
				
				while (rs.next()) {
					BbsDTO bbsDto = new BbsDTO();
					bbsDto.setBbsId(rs.getInt("bbsId"));
					bbsDto.setBbsTitle(rs.getString("bbsTitle"));
					bbsDto.setBbsContent(rs.getString("bbsContent"));
					bbsDto.setBbsDate(rs.getTimestamp("bbsDate"));
					bbsDto.setBbsHit(rs.getInt("bbsHit"));
					bbsDto.setMember_id(rs.getString("member_id"));
					list.add(bbsDto);
				}
				
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				close();
			}
			return list;
		}
	   
	   
	   
	   
}
