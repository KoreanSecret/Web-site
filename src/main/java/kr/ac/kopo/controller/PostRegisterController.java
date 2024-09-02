package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.PostDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.PostVO;

public class PostRegisterController implements Controller{

	@Override
	public String handleRequest(HttpServletRequest request , HttpServletResponse response) throws Exception{
		
		   request.setCharacterEncoding("utf-8");
		   
		   HttpSession session = request.getSession();
		   String username = (String) session.getAttribute("username");
		   
		   if(username == null) {
		       
		       return "/loginForm.do"; // 
		   }
		   
		   
		   int no = Integer.parseInt(request.getParameter("no"));
		   String title = request.getParameter("title");
		   String content = request.getParameter("content");
		   String regDate = request.getParameter("regDate");
		   
		   PostVO post = new PostVO();
		   post.setNo(no);
		   post.setUsername(username); 
		   post.setTitle(title);
		   post.setContent(content);
		   post.setRegDate(regDate);
		   
		   PostDAO postdao = new PostDAO();
		   postdao.insert(post);
		   
		   
		   
		   // 게시판 리스트 받아와서 request.setAttribute로 등록 해주면 됨
		   
		   return "/board/list.jsp";
	}
}