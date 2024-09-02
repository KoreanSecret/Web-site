<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="kr.ac.kopo.dao.UserDAO"%>
<%@page import="kr.ac.kopo.vo.UserVO"%>

<%
   request.setCharacterEncoding("utf-8");

   String user_id = request.getParameter("User_id");
   String username = request.getParameter("username");
   String password = request.getParameter("password");
   String email = request.getParameter("email");
   String phone_number = request.getParameter("phone_number");

   UserVO user = new UserVO();
   user.setUser_id(user_id);
   user.setUsername(username);
   user.setPassword(password);
   user.setEmail(email);
   user.setPhone_number(phone_number);

   UserDAO userdao = new UserDAO();
   userdao.insertUser(user); 

%>
   <script>
   alert('회원가입이 완료되었습니다');
   location.href = "${pageContext.request.contextPath}/lionel.do";
   </script>
