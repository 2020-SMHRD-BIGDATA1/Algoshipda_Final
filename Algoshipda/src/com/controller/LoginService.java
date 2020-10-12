package com.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.MemberDAO;
import com.model.MemberDTO;

/**
 * Servlet implementation class LoginService
 */
@WebServlet("/LoginService")
public class LoginService extends HttpServlet {
	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		
				String member_id = request.getParameter("member_id");
				String member_pw = request.getParameter("member_pw");
			
				MemberDTO dto = new MemberDTO(member_id, member_pw);
				MemberDAO dao = new MemberDAO();
				
				MemberDTO info = dao.login(dto);
				
				if (info != null) {
					// 로그인 성공시에는 session에 info라는 네임으로 info객체를 저장
					HttpSession session = request.getSession();
					session.setAttribute("info", info);
					response.sendRedirect("main.jsp");
				} else {
					response.sendRedirect("loginForm.jsp");
				}
		
	}

}
