<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page language="java" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>로그인</title>
    <style>
        body {
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #ffcccb; /* 핑크색 배경 */
            margin: 0;
            font-family: Arial, sans-serif;
        }
        .login-container {
            background-color: #fff;
            padding: 40px;
            border: 1px solid #dbdbdb;
            border-radius: 1px;
            box-shadow: 0 0 5px rgba(0, 0, 0, 0.1);
            text-align: center;
            width: 350px;
        }
        .login-container .title {
            font-size: 24px;
            font-weight: bold;
            color: #000;
            margin-bottom: 20px;
        }
        .login-container .input-group {
            margin-bottom: 10px;
            text-align: left;
        }
        .login-container .input-group input {
            width: 100%;
            padding: 10px;
            margin-top: 5px;
            border: 1px solid #dbdbdb;
            border-radius: 3px;
            background: #fafafa;
        }
        .login-container button {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: none;
            border-radius: 4px;
            background-color: #3897f0;
            color: #fff;
            font-weight: bold;
            cursor: pointer;
        }
        .login-container .or-container {
            display: flex;
            align-items: center;
            text-align: center;
            color: #8e8e8e;
            margin: 20px 0;
        }
        .login-container .or-container div {
            flex: 1;
            height: 1px;
            background-color: #dbdbdb;
        }
        .login-container .or-container span {
            margin: 0 10px;
        }
        .login-container .forgot-password,
        .login-container .signup {
            font-size: 12px;
            color: #00376b;
            text-decoration: none;
            margin-top: 10px;
            display: block;
        }
        .login-container .signup {
            color: #262626;
            margin-top: 20px;
        }
        .login-container .signup a {
            color: #0095f6;
        }
        .error-message {
            color: red;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <div class="title">TIAMOU</div>
        <%
            String errorMessage = request.getParameter("errorMessage");
            if (errorMessage != null) {
        %>
            <div class="error-message"><%= errorMessage %></div>
        <%
            }
        %>
        <form action="${ pageContext.request.contextPath }/login.do" method="post">
            <div class="input-group">
                <label for="User_id">아이디</label>
                <input type="text" id="User_id" name="User_id" required>
            </div>
            <div class="input-group">
                <label for="password">비밀번호</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">로그인</button>
        </form>
        <div class="or-container">
            <div></div>
            <span>또는</span>
            <div></div>
        </div>
        <a class="forgot-password" href="#">비밀번호를 잊으셨나요?</a>
        <div class="signup">
            계정이 없으신가요? <a href="${pageContext.request.contextPath }/join/joinprocess.jsp">가입하기</a>
        </div>
    </div>
