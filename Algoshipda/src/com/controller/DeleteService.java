package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BbsDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class DeleteService
 */
@WebServlet("/DeleteService")
public class DeleteService extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bbsTitle = request.getParameter("bbsTitlef");
		BbsDAO bbsDao = new BbsDAO();
		int cnt = bbsDao.del(bbsTitle);	
		if(cnt > 0) {
			System.out.println("삭제 성공");
			response.sendRedirect("board_cat.jsp");
			
		} else {
			System.out.println("삭제 실패");
		}
		
	}

}
