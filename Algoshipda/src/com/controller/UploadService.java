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
		request.setCharacterEncoding("UTF-8");
		String directory = request.getSession().getServletContext().getRealPath("/upload");

		int maxSize = 1024 * 1024 * 100;
		String encoding = "UTF-8";
		int cnt = 0;
		MultipartRequest multipartRequest = new MultipartRequest(request, directory, maxSize, encoding,
				new DefaultFileRenamePolicy());
//      String fileName = multipartRequest.getOriginalFileName("file");
		String fileName = multipartRequest.getFilesystemName("file");
		if (fileName != null) {
			cnt = new FileDAO().upload(fileName);
		}

		System.out.println(fileName);
		response.setCharacterEncoding("UTF-8");
		if (cnt > 0) {
			System.out.println(fileName+"000");
			response.sendRedirect("http://172.30.1.50:9000/predict/predict?fileName=" + fileName);
		} else {
			response.sendRedirect("main.jsp");
		}

	}

}