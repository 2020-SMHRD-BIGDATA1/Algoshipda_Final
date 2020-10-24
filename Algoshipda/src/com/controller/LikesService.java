package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BbsDAO;
import com.model.BbsDTO;

@WebServlet("/LikesService")
public class LikesService extends HttpServlet {

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		
		BbsDAO bbsDao = new BbsDAO();
		String bbsId = request.getParameter("num");
		
		System.out.print(bbsId);
		response.sendRedirect("board_info.jsp");
		
		
		
	}

}
