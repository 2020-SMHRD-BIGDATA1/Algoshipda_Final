package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import com.model.BbsDTO;
import com.model.MemberDTO;
import bbs.BbsDAO;

/**
 * Servlet implementation class WriteService
 */
@WebServlet("/WriteService")
public class WriteService extends HttpServlet {	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		
		MemberDTO info = (MemberDTO) session.getAttribute("info");
		
		String bbsTitle = request.getParameter("bbsTitle");
		String bbsContent = request.getParameter("bbsContent");
		
		
		com.model.BbsDAO bbsDao = com.model.BbsDAO.getInstance();
		BbsDTO bbsDto = new BbsDTO();
		bbsDto.setBbsId(bbsDao.nextval() + 1);
		bbsDto.setBbsTitle(bbsTitle);
		bbsDto.setBbsContent(bbsContent);
		bbsDto.setMember_id(info.getMember_id());

		int wResult = bbsDao.write(bbsDto);
		System.out.println(wResult);
		response.sendRedirect("board_cat.jsp");
		
		System.out.print(bbsDto.getBbsTitle());
		System.out.print(bbsDto.getBbsContent());
		
	}

}
