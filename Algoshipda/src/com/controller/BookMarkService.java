package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class BookMarkService
 */
@WebServlet("/BookMarkService")
public class BookMarkService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		String bookmark = request.getParameter("bookmark");
		com.model.jjimDAO dao = new com.model.jjimDAO();
		int cnt = dao.jjim(bookmark);
	
		if(cnt > 0) {
			response.sendRedirect("MyPage_form.jsp");
		}else {
			response.sendRedirect("detail.jsp");
		}
		

	
	
	
	
	}
	

}
