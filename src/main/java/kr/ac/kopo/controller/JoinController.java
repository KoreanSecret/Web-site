package kr.ac.kopo.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kr.ac.kopo.dao.UserDAO;
import kr.ac.kopo.framework.Controller;
import kr.ac.kopo.vo.UserVO;

public class JoinController implements Controller {

    @Override
    public String handleRequest(HttpServletRequest request, HttpServletResponse response) throws Exception {
        request.setCharacterEncoding("UTF-8");

        // Request parameters
        String userId = request.getParameter("user_id");
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        String email = request.getParameter("email");
        String phoneNumber = request.getParameter("phone_number");
        String secret = request.getParameter("secret");
        System.out.println(secret);
        System.out.println("값 들어오는지 확인: " + userId);
        
        

        // Create a new UserVO object and set its properties
        UserVO user = new UserVO();
        user.setUser_id(userId);
        user.setUsername(username);
        user.setPassword(password);
        user.setEmail(email);
        user.setPhone_number(phoneNumber);

        
        System.out.println(user);
        UserDAO userDao = new UserDAO();
        userDao.insertUser(user);

        return "/lionel.do";
    }
}
