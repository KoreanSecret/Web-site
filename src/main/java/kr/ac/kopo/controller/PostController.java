package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.PostDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.PostVO;
import kr.ac.kopo.vo.UserVO;

public class PostController implements Controller {

	@Override
	public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		HttpSession session = request.getSession();
		
		UserVO user = new UserVO();
		user = (UserVO)session.getAttribute("userInfo");
		
		System.out.println("userInfo");
		PostDAO postDAO = new PostDAO();
        List<PostVO> postList = postDAO.selectAll();
        
        System.out.println(postList);
        
		request.setAttribute("userInfo2", user);
		request.setAttribute("postList", postList);
		return "/board/list.jsp";

	}
}
