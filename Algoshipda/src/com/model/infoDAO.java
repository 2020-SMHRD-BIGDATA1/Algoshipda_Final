package com.model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class infoDAO {

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
	   
	      
	      public ArrayList<infoDTO> infomation_select(){
	   	   
	   	   getConn();
	   	   
	   	   ArrayList<infoDTO> list = new ArrayList<infoDTO>();
	   	   
	   	   String sql = "select * from information";
	   	   
	   	   try {
	   		psmt = conn.prepareStatement(sql);
	   		rs = psmt.executeQuery();
	   		while(rs.next()) {
	   			
	   			
	   			int information_index = rs.getInt(1);
	   			String infor_title = rs.getString(2);
	   			String infor_addr = rs.getString(3);
	   			infoDTO info = new infoDTO(information_index, infor_title, infor_addr);
	   			list.add(info);
	   		}
	   	} catch (SQLException e) {
	   		// TODO Auto-generated catch block
	   		e.printStackTrace();
	   	}finally {
	   		close();
	   	}
	   	   return list;
	   	   
	      }
	
}
