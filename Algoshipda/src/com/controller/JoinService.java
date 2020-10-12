package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet("/JoinService")
public class JoinService extends HttpServlet {
	

	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		
		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");
		String member_addr = request.getParameter("member_addr");
		String member_tel = request.getParameter("member_tel");
		
		com.model.MemberDTO dto = new com.model.MemberDTO(member_id, member_pw,member_addr,member_tel);
		com.model.MemberDAO dao = new com.model.MemberDAO();
		int cnt = dao.join(dto);
		
		if(cnt > 0) {
			System.out.println("회원가입 성공");
			System.out.println(member_id);
			
			HttpSession session = request.getSession();
			session.setAttribute("member_id", member_id);
			response.sendRedirect("main.jsp");
		}else {
			System.out.println("회원가입 실패");
			// join.jsp로 이동
			response.sendRedirect("joinForm.jsp");
		}
		

				
	}

}
