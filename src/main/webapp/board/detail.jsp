<%@ page contentType="text/html; charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>게시글 상세보기</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
        }
        .container {
            background: #fff;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 100%;
            border-radius: 8px;
            margin: 20px;
        }
        h1 {
            color: #333;
            font-size: 2em;
            margin-bottom: 10px;
        }
        p {
            color: #666;
            line-height: 1.6;
        }
        .author, .date {
            font-size: 0.9em;
            color: #999;
        }
        .comment-section {
            margin-top: 20px;
        }
        .comment {
            display: flex;
            align-items: flex-start;
            margin-bottom: 15px;
        }
        .comment img {
            border-radius: 50%;
            margin-right: 10px;
        }
        .comment-content {
            background: #f9f9f9;
            padding: 10px;
            border-radius: 8px;
            flex-grow: 1;
        }
        .comment-content p {
            margin: 0;
        }
        .comment-form {
            display: flex;
            align-items: center;
            margin-top: 20px;
            padding-top: 10px;
            border-top: 1px solid #eee;
        }
        .comment-form input[type="text"] {
            flex: 1;
            padding: 10px;
            margin-right: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .comment-form button {
            padding: 10px 20px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .comment-form button:hover {
            background-color: #0056b3;
        }
        .comment-user {
            font-weight: bold;
            margin-bottom: 5px;
        }
        .comment-date {
            font-size: 0.85em;
            color: #999;
            margin-bottom: 5px;
        }
        .comment-actions {
            font-size: 0.85em;
            color: #999;
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>${write.title}</h1>
        <p class="author">작성자: ${write.username}</p>
        <img src="/Web-Site/upload/${write.users.photo}" alt="User Profile Image" width="80" height="80">
        <p class="date">작성일: ${write.reg_date}</p>
        <p class="content">내용 :${write.content}</p>
        
        <div class="comment-section">
            <h2>댓글</h2>
            <c:forEach var="comment" items="${comments}">
                <div class="comment">
                    <div class="comment-content">
                        <div class="comment-user">${comment.username}</div>
        <img src="/Web-Site/upload/${comment.photo}" alt="User Profile Image" width="80" height="80">
                        <p>${comment.content}</p>
                        <div class="comment-actions">
                            
                        </div>
                    </div>
                </div>
            </c:forEach>

            <form class="comment-form" method="post" action="detail.do">
                <img src="/Web-Site/upload/${sessionScope.userInfo.photo}" alt="My Profile Image" width="30" height="30">
                <input type="hidden" name="no" value="${write.no}">
                <input type="text" id="content" name="content" placeholder="댓글을 남겨보세요">
                <button type="submit">등록</button>
            </form>
        </div>
    </div>
</body>
</html>
