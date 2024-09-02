package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.WriteDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.UserVO;
import kr.ac.kopo.vo.WriteVO;

public class WriteController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("utf-8");
        HttpSession session =request.getSession();
        UserVO userInfo=(UserVO)session.getAttribute("userInfo");
        // 폼 데이터 가져오기
        String title = request.getParameter("title");
        String content = request.getParameter("content");

        // WriteVO 객체 생성
        WriteVO write = new WriteVO();
        write.setTitle(title);
        write.setContent(content);
        write.setUsername(userInfo.getUsername());
        write.setId(userInfo.getUser_id());
        

        // 데이터베이스에 저장
        WriteDAO writeDAO = new WriteDAO();
        writeDAO.insert(write);

        // 저장 후 list.jsp로 리다이렉트
        return "redirect:/post.do";
    }
}