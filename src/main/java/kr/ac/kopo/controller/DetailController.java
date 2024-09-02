package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import kr.ac.kopo.dao.DetailDAO;
import kr.ac.kopo.dao.WriteDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.DetailResponseVO;
import kr.ac.kopo.vo.DetailVO;
import kr.ac.kopo.vo.UserVO;
import kr.ac.kopo.vo.WriteVO;

import java.util.List;
import java.util.Map;

public class DetailController implements Controller {
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        request.setCharacterEncoding("utf-8");
        HttpSession session = request.getSession();
        UserVO userInfo = (UserVO) session.getAttribute("userInfo");
        
        String write_no = request.getParameter("no");
        String content = request.getParameter("content");
        
        System.out.println(write_no);
        
        WriteDAO writeDAO = new WriteDAO();
        WriteVO write = writeDAO.selectOne(write_no);
        
       System.out.println("DetailController chk 1 : "+content);
       System.out.println("write_no : "+write_no); 
       
       if (content != null && !content.trim().isEmpty()) {
           DetailVO detail = new DetailVO();
           detail.setUsername(userInfo.getUser_id());
           detail.setWrite_no(write_no);
           detail.setContent(content);
           
           DetailDAO detailDAO = new DetailDAO();
           detailDAO.insert(detail);
       }
       
       DetailDAO detailDAO = new DetailDAO();
       List<DetailResponseVO> comments = detailDAO.selectAll(write_no);
       
       System.out.println("DetailController chk 3");
       
       request.setAttribute("write", write);
       request.setAttribute("comments", comments); // Correct attribute name to match JSP
       
       
       return "/board/detail.jsp";
   }
}