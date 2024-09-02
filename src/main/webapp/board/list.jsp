<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html>
<html>

<head>
    <!-- Basic -->
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Mobile Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
    <!-- Site Metas -->
    <meta name="keywords" content="" />
    <meta name="description" content="" />
    <meta name="author" content="" />
    <link rel="shortcut icon" href="/Web-Site/resources/css/images/favicon.png"
        type="image/x-icon">

    <title>TIAMOU</title>
    <!-- slider stylesheet -->
    <link rel="stylesheet" type="text/css"
        href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

    <!-- bootstrap core css -->
    <link rel="stylesheet" type="text/css" href="/Web-Site/resources/bootstrap.css" />

    <!-- Custom styles for this template -->
    <link href="/Web-Site/resources/style.css" rel="stylesheet" />
    <!-- responsive style -->
    <link href="/Web-Site/resources/responsive.css" rel="stylesheet" />

    <style>
        /* Ensures the content takes up at least the full viewport height */
        html, body {
            height: 100%;
            margin: 0;
            display: flex;
            flex-direction: column;
        }

        /* Main container that will push the footer to the bottom */
        .container {
            flex: 1;
        }

        .board-table {
            width: 100%;
            border-collapse: collapse;
        }

        .board-table th,
        .board-table td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        .board-table th {
            background-color: #f2f2f2;
            text-align: center;
        }

        .board-table td {
            text-align: center;
        }

        .board-table .title {
            text-align: left;
        }

        .write-button {
            margin: 20px 0;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            text-decoration: none;
            display: inline-block;
        }

        .write-button:hover {
            background-color: #45a049;
        }
    </style>
</head>

<body>
    <header>
        <jsp:include page="/include/topMenu.jsp" />
    </header>

    <!-- board section -->
    <div id="mycontent" class="container">
        <h2>게시글</h2>
        <table class="board-table">
            <thead>
                <tr>
                    <th>번호</th>
                    <th>제목</th>
                    <th>이름</th>
                    <th>아이디</th>
                    <th>작성일</th>
                </tr>
                <c:forEach items="${postList}" var="post">
                    <tr>
                        <td>${ post.no }</td>
                        <td>
                        	<a href="${ pageContext.request.contextPath }/detail.do?no=${post.no }">
                        		${ post.title }
                        	</a>
                        </td>
                        <td>${ post.username }</td>
                        <td>${ post.id }</td>
                        <td>${ post.regDate }</td>
                    </tr>
                </c:forEach>
            </thead>
        </table>
        <a href="${ pageContext.request.contextPath }/writeForm.do" class="write-button">글쓰기</a>
    </div>
    <!-- end board section -->

    <!-- info section -->
    <footer>
        <%@ include file="/include/footer.jsp"%>
    </footer>

    <script src="/Web-Site/resources/css/js/jquery-3.4.1.min.js"></script>
    <script src="/Web-Site/resources/css/js/jquery-3.4.1.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="/Web-Site/resources/css/js/custom.js"></script>
</body>

</html>