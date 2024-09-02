package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.ac.kopo.dao.UserDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.UserVO;

public class LoginController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");

        String userId = request.getParameter("User_id");
        String password = request.getParameter("password");

        UserVO user = new UserVO();
        user.setUser_id(userId);
        user.setPassword(password);

        UserDAO userDao = new UserDAO();
        UserVO loginUser = userDao.loginUser(user);

        if (loginUser != null) {
            HttpSession session = request.getSession();
            session.setAttribute("userInfo", loginUser); // 세션에 userInfo로 저장
            return "/lionel.do";
        } else {
            return "/login_fail.jsp";
        }
    }
}
