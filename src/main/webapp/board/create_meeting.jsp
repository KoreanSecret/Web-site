<%@page import="kr.ac.kopo.vo.UserVO"%>
<%@page import="javax.servlet.http.HttpSession"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
    HttpSession httpSession = request.getSession();
    UserVO loginUser = (UserVO) httpSession.getAttribute("userInfo");
    String hostId = loginUser != null ? loginUser.getUser_id() : "";
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>모임 만들기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .container {
            background-color: #fff;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 400px;
        }
        h2 {
            text-align: center;
            color: #333;
        }
        .form-group {
            margin-bottom: 15px;
        }
        label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        input[type="text"], textarea {
            width: calc(100% - 20px);
            padding: 10px;
            margin: 5px 0 10px 0;
            display: inline-block;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        textarea {
            resize: none;
        }
        input[type="submit"] {
            width: 100%;
            background-color: #4CAF50;
            color: white;
            padding: 14px 20px;
            margin: 8px 0;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        input[type="submit"]:hover {
            background-color: #45a049;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>어떤 방을 만들까?</h2>
        <form action="board/create_meeting.do" method="post">
            <div class="form-group">
                <label for="TITLE">방 제목:</label>
                <input type="text" id="TITLE" name="TITLE" required>
            </div>
            <div class="form-group">
                <label for="DESCRIPTION">방 소개:</label>
                <textarea id="DESCRIPTION" name="DESCRIPTION" required></textarea>
            </div>
            <div class="form-group">
                <label for="LOCATION_NAME">장소:</label>
                <input type="text" id="LOCATION_NAME" name="LOCATION_NAME" required>
            </div>
            <div class="form-group">
                <label for="LOCATION_ADDRESS">주소:</label>
                <input type="text" id="LOCATION_ADDRESS" name="LOCATION_ADDRESS" required>
            </div>
            <div class="form-group">
                <label for="LOCATION_LATITUDE">위도:</label>
               <input type="text" id="LOCATION_LATITUDE" name="LOCATION_LATITUDE" required>
            </div>
            <div class="form-group">
                <label for="LOCATION_LONGITUDE">경도:</label>
                <input type="text" id="LOCATION_LONGITUDE" name="LOCATION_LONGITUDE" required>

            </div>
            <div class="form-group">
                <label for="HOST_ID">방장 아이디:</label>
                <input type="text" id="HOST_ID" name="HOST_ID" value="${sessionScope.userInfo.user_id}" readonly>
            </div>
            
            <div class="form-group">
                <input type="submit" value="Create Meeting">
            </div>
        </form>
    </div>
</body>
</html>
