<%@page import="kr.ac.kopo.dao.UserDAO"%>
<%@page import="kr.ac.kopo.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%
  request.setCharacterEncoding("utf-8");

  String id = request.getParameter("User_id");
  String password = request.getParameter("password");

  UserVO loginVO = new UserVO();
  loginVO.setUser_id(id);
  loginVO.setPassword(password);

  UserDAO userDao = new UserDAO();
  UserVO userVO = userDao.loginUser(loginVO);

  String url = "";
  String msg = "";
  if(userVO == null){
      // 로그인 실패
      url= "login.jsp";
      msg="아이디 또는 패스워드를 잘못 입력하셨습니다";
  } else {
      // 로그인 성공
      url="index.jsp";
      msg = userVO.getUsername() + "님 환영합니다";
      session.setAttribute("userVO", userVO);
  }
  pageContext.setAttribute("url", url);
  pageContext.setAttribute("msg", msg);
%>

