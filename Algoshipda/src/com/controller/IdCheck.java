package com.controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.model.MemberDAO;

@WebServlet("/IdCheck")
public class IdCheck extends HttpServlet {
   private static final long serialVersionUID = 1L;

   protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//      request.setCharacterEncoding("UTF-8");
//   
//      String id = request.getParameter("member_id");
//      
//      
//      
//      MemberDAO dao = new MemberDAO();
//      /*��񿡼� �����ͼ� */
//      boolean check = dao.idCheck(member_id);
//      
//      PrintWriter out = response.getWriter();
//      
//      /* ���ǹ� �ۼ��ؼ� ������*/
//       
//      out.print(check);

      String member_id = request.getParameter("member_id");
      System.out.println(member_id);
      
      MemberDAO dao = new MemberDAO();
      
      boolean check = dao.idCheck(member_id);
      
      response.setContentType("text/html; charset=UTF-8");
      PrintWriter out = response.getWriter();
      out.print(check);
      
      
   
   
   
   
   }

}