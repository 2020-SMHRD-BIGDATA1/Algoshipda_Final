package com.controller;

import java.io.File;
import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.BbsDAO;
import com.model.BbsDTO;
import com.model.MemberDAO;
import com.model.MemberDTO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

/**
 * Servlet implementation class UpdateService
 */
@WebServlet("/UpdateService")
public class UpdateService extends HttpServlet {	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		request.setCharacterEncoding("UTF-8");
		HttpSession session = request.getSession();
		MemberDTO info = (MemberDTO) session.getAttribute("info");

		
		final String saveFolder = "C:\\Users\\SMHRD\\Desktop\\Algo_final\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Algo\\bbsimage";
		final String encoding = "UTF-8"; 
		final int maxSize = 10*350*350; //10mb
		
			//파일이 서버에 업로드되는 시점은 MultipartRequest 객체 생성 순간이다.
			MultipartRequest multi = new MultipartRequest(request, saveFolder, maxSize, encoding, new DefaultFileRenamePolicy());
			//request가 되는 순간 null로 변한다.
			String bbsImg = multi.getFilesystemName("bbsImg"); 
			String original = multi.getOriginalFileName("uploadFile"); 
			//filename은 중복이름이 들어올 경우 자동으로 index가 붙는데, index되기 전의 원본명		
			String type = multi.getContentType("uploadFile"); 
			File f = multi.getFile("uploadFile");			
				
//		
		String bbsId = multi.getParameter("bbsId") ;
		String bbsTitle = multi.getParameter("bbsTitle");
		String bbsContent = multi.getParameter("bbsContent");
		
		
		System.out.println(bbsId+"나옴");
//		System.out.println(bbsTitle+"slfkd");
		
//		
		
		com.model.BbsDAO bbsDao = new BbsDAO();
		BbsDTO bbsDto = new BbsDTO();
		bbsDto.setBbsId(bbsDao.nextval()+1);
		bbsDto.setBbsTitle(bbsTitle);
		bbsDto.setBbsContent(bbsContent);
		bbsDto.setMember_id(info.getMember_id());
		bbsDto.setBbsImg(bbsImg);

		int wResult = bbsDao.update(bbsDto);
		System.out.println(wResult);
		response.sendRedirect("board_cat.jsp");
		

		}
	}


