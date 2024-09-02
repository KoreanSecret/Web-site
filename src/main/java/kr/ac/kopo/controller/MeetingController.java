package kr.ac.kopo.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.MeetingDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.MeetingVO;
import kr.ac.kopo.vo.UserVO;

public class MeetingController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        
        System.out.println("미팅 컨트롤러");
        request.setCharacterEncoding("UTF-8");
        HttpSession session = request.getSession();
        UserVO userInfo = (UserVO) session.getAttribute("userInfo");

        if (userInfo == null) {
            return "/login.jsp";
        }

        String TITLE = request.getParameter("TITLE");
        String DESCRIPTION = request.getParameter("DESCRIPTION");
        String LOCATION_NAME = request.getParameter("LOCATION_NAME");
        String LOCATION_ADDRESS = request.getParameter("LOCATION_ADDRESS");
        String LOCATION_LATITUDE_PARAM = request.getParameter("LOCATION_LATITUDE");
        String LOCATION_LONGITUDE_PARAM = request.getParameter("LOCATION_LONGITUDE");

        double LOCATION_LATITUDE = 0.0;
        double LOCATION_LONGITUDE = 0.0;

//        System.out.println("TITLE: " + TITLE);
//        System.out.println("DESCRIPTION: " + DESCRIPTION);
//        System.out.println("LOCATION_NAME: " + LOCATION_NAME);
//        System.out.println("LOCATION_ADDRESS: " + LOCATION_ADDRESS);
//        System.out.println("LOCATION_LATITUDE: " + LOCATION_LATITUDE);
//        System.out.println("LOCATION_LONGITUDE: " + LOCATION_LONGITUDE);

        try {
            if (LOCATION_LATITUDE_PARAM != null) {
                LOCATION_LATITUDE = Double.parseDouble(LOCATION_LATITUDE_PARAM);
            }
            if (LOCATION_LONGITUDE_PARAM != null) {
                LOCATION_LONGITUDE = Double.parseDouble(LOCATION_LONGITUDE_PARAM);
            }
        } catch (NumberFormatException e) {
            e.printStackTrace();
        }

        MeetingVO meeting = new MeetingVO();
        meeting.setTITLE(TITLE);
        meeting.setDESCRIPTION(DESCRIPTION);
        meeting.setLOCATION_NAME(LOCATION_NAME);
        meeting.setLOCATION_ADDRESS(LOCATION_ADDRESS);
        meeting.setLOCATION_LATITUDE(LOCATION_LATITUDE);
        meeting.setLOCATION_LONGITUDE(LOCATION_LONGITUDE);
        meeting.setHOST_ID(userInfo.getUser_id());

        MeetingDAO dao = new MeetingDAO();
        dao.insert(meeting);
        
        List<MeetingVO> meetingList = dao.selectAll();
        request.setAttribute("meetingList",meetingList);
        return "/board/meetinglist.jsp";
    }
}
