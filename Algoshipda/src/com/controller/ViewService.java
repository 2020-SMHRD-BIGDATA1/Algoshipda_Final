package com.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.BbsDAO;
import com.model.BbsDTO;

/**
 * Servlet implementation class ViewService
 */
@WebServlet("/ViewService")
public class ViewService extends HttpServlet {
	
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		process(request, response);
	}
	private void process(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String bbsId = request.getParameter("bbsId");
		BbsDAO bbsDao = BbsDAO.getInstance();
		BbsDTO bbsDto = new BbsDTO();
		bbsDao.hitUpdate(bbsId);
		bbsDto = bbsDao.selectById(bbsId);
		
		request.setAttribute("board_info", bbsDto);
		
		RequestDispatcher rd = request.getRequestDispatcher("board_info.jsp");
		rd.forward(request, response);
		

		
		
		
	}

}
