package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.MeetingDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.MeetingVO;
import kr.ac.kopo.vo.UserVO;

public class MeetingSelectController implements Controller {
    
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	  request.setCharacterEncoding("utf-8");
          HttpSession session = request.getSession();
          UserVO userInfo = (UserVO) session.getAttribute("userInfo");
          
        System.out.println("미팅 상세 조회 완료");
        
        
        String meetingNo = request.getParameter("meetingNo");
        
        MeetingDAO meetingDAO = new MeetingDAO();
        MeetingVO meeting = meetingDAO.selectOne(meetingNo);
        
        request.setAttribute("meeting", meeting);
        
        return "/board/meetingselect.jsp";
    }
}
