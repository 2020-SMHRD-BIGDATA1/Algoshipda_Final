package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

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

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		response.setContentType("application/json;charset=UTF-8");
		response.setCharacterEncoding("UTF-8");

		String member_id = request.getParameter("member_id");
		String member_pw = request.getParameter("member_pw");

		MemberDTO dto = new MemberDTO(member_id, member_pw);
		MemberDAO dao = new MemberDAO();

		MemberDTO info = dao.login(dto);
		if (info != null) {
			HttpSession session = request.getSession();
			session.setAttribute("info", info);
			response.sendRedirect("main.jsp");
		} else {
			response.setContentType("text/html; charset=utf-8");
			PrintWriter writer = response.getWriter();
			writer.println("<script>alert('로그인에 실패하였습니다.'); location.href='Login_form.jsp';</script>");
			writer.close();

		}

	}

}
