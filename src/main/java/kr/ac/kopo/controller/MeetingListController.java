package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.MeetingDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.MeetingVO;

public class MeetingListController implements Controller {
    
    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
    	System.out.println("리스트 조회 완료");
        MeetingDAO meetingDAO = new MeetingDAO();
       
        List<MeetingVO> meetingList = meetingDAO.selectAll();
        
        request.setAttribute("meetingList", meetingList);
        return "/board/meetinglist.jsp";
    }
}
