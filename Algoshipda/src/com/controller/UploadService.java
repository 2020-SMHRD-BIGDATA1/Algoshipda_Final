package com.controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.model.FileDAO;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

@WebServlet("/UploadService")
public class UploadService extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void service(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		String directory = request.getSession().getServletContext().getRealPath("/upload");

		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";
		int cnt = 0;
		MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
				new DefaultFileRenamePolicy());
		String fileName = multipartRequest.getOriginalFileName("file");
		String fileRealName = multipartRequest.getFilesystemName("file");
		if (fileName != null && fileRealName != null) {
			cnt = new FileDAO().upload(fileName, fileRealName);

		}

		System.out.println(fileName);
		if (cnt > 0) {
			response.sendRedirect("RecommendPage.jsp?fileName=" + fileName);

		} else {
			response.sendRedirect("main.jsp");
		}

	}

}