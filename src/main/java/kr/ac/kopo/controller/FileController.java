package kr.ac.kopo.controller;

import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Files;
import java.nio.file.StandardCopyOption;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import kr.ac.kopo.dao.FileDAO;

	@WebServlet("/uploadServlet")
	@MultipartConfig
	public class FileController extends HttpServlet {
	    private static final long serialVersionUID = 1L;
	    private FileDAO fileDAO;

	    public void init() throws ServletException {
	        SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder()
	            .build(getServletContext().getResourceAsStream("/WEB-INF/mybatis-config.xml"));
	        fileDAO = new FileDAO(sqlSessionFactory);
	    }

	    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	        String uploadDirectory = "C:\\Lecture\\javaworkspace\\web-workspace\\Web-Site\\src\\main\\webapp\\upload";
	        File uploadDir = new File(uploadDirectory);
	        if (!uploadDir.exists()) {
	            uploadDir.mkdirs();
	        }

	        String id = request.getParameter("id");
	        String username = request.getParameter("id");
	        String password = request.getParameter("pwd");
	        String email = request.getParameter("email");
	        String phoneNumber = request.getParameter("phone_number");

	        Part filePart = request.getPart("photo");
	        String fileName = filePart.getSubmittedFileName();
	        File file = new File(uploadDirectory, fileName);

	        try (InputStream fileContent = filePart.getInputStream()) {
	            Files.copy(fileContent, file.toPath(), StandardCopyOption.REPLACE_EXISTING);
	        }

	        Map<String, Object> paramMap = new HashMap<>();
	        paramMap.put("id", id);
	        paramMap.put("username", username);
	        paramMap.put("password", password);
	        paramMap.put("email", email);
	        paramMap.put("phoneNumber", phoneNumber);
	        paramMap.put("photo", fileName);

	       fileDAO.insertFile(paramMap);

	        response.setContentType("text/html;charset=UTF-8");
	        response.getWriter().println("파일 업로드 성공: " + file.getAbsolutePath());
	    }
	}

