<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  <link rel="shortcut icon" href="images/favicon.png" type="image/x-icon">

  <title>
    TIAMOU
  </title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="/Web-Site/resources/bootstrap.css" />

  <!-- Custom styles for this template -->
  <link href="/Web-Site/resources/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="/Web-Site/resources/responsive.css" rel="stylesheet" />

  <style>
    .comment-container {
      padding: 20px;
      background-color: #f9f9f9;
      border-radius: 10px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      margin-bottom: 20px;
    }

    .comment-header {
      display: flex;
      align-items: center;
      margin-bottom: 20px;
    }

    .comment-header img {
      width: 50px;
      height: 50px;
      border-radius: 50%;
      margin-right: 15px;
    }

    .comment-header .user-info {
      display: flex;
      flex-direction: column;
    }

    .comment-header .user-info .username {
      font-weight: bold;
    }

    .comment-header .user-info .date {
      color: #777;
      font-size: 12px;
    }

    .comment-body {
      padding: 10px 0;
      color: #555;
    }

    .comment-form {
      display: flex;
      align-items: center;
      justify-content: space-between;
      margin-top: 20px;
      padding: 20px;
      background-color: #f1f1f1;
      border-radius: 10px;
    }

    .comment-form input[type="text"] {
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      flex: 1;
      margin-right: 10px;
    }

    .comment-form button {
      padding: 10px 20px;
      border: none;
      border-radius: 5px;
      background-color: #5cb85c;
      color: white;
      cursor: pointer;
    }

    .comment-form button:hover {
      background-color: #4cae4c;
    }
  </style>
</head>

<body>
  <div class="hero_area">
    <!-- header section strats -->
    <header class="header_section">
      <nav class="navbar navbar-expand-lg custom_nav-container ">
        <a class="navbar-brand" href="index.jsp">
          <span>
            TIAMOU
          </span>
        </a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent"
          aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
          <span class=""></span>
        </button>

        <div class="collapse navbar-collapse innerpage_navbar" id="navbarSupportedContent">
          <ul class="navbar-nav  ">
            <li class="nav-item ">
              <a class="nav-link" href="index.jsp">Home <span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item active">
              <a class="nav-link" href="shop.jsp">
                Info
              </a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="post.jsp">Post</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="comment.jsp">
                Comment
              </a>
            </li>
          </ul>
          <div class="user_option">
            <a href="">
              <i class="fa fa-user" aria-hidden="true"></i>
              <span>
                Login
              </span>
            </a>
            <a href="">
              <i class="fa fa-shopping-bag" aria-hidden="true"></i>
            </a>
            <form class="form-inline ">
              <button class="btn nav_search-btn" type="submit">
                <i class="fa fa-search" aria-hidden="true"></i>
              </button>
            </form>
          </div>
        </div>
      </nav>
    </header>
    <!-- end header section -->
  </div>
  <!-- end hero area -->

  <!-- Comment Section -->
  <section class="comment_section layout_padding2-top">
    <div class="container">
      <div class="comment-container">
        <div class="comment-header">
          <img src="images/profile.png" alt="profile image">
          <div class="user-info">
            <span class="username">뉴진스빼돌이</span>
            <span class="date">2024.06.30. 16:04 조회 134</span>
          </div>
        </div>
        <div class="comment-body">
          <p>파프 블랙셋업 한번사서 주구장창</p>
        </div>
      </div>

      <!-- Comment Form -->
      <form class="comment-form" action="submit_comment.jsp" method="post">
        <input type="text" name="username" placeholder="아이디" required>
        <input type="text" name="comment" placeholder="댓글을 입력하세요" required>
        <button type="submit">완료</button>
      </form>
    </div>
  </section>
  <!-- end comment section -->

  <!-- info section -->
  <section class="info_section layout_padding2-top">
    <div class="social_container">
      <div class="social_box">
        <a href="">
          <i class="fa fa-facebook" aria-hidden="true"></i>
        </a>
        <a href="">
          <i class="fa fa-twitter" aria-hidden="true"></i>
        </a>
        <a href="">
          <i class="fa fa-instagram" aria-hidden="true"></i>
        </a>
        <a href="">
          <i class="fa fa-youtube" aria-hidden="true"></i>
        </a>
      </div>
    </div>
    <div class="info_container ">
      <div class="container">
        <div class="row">
          <div class="col-md-6 col-lg-3">
            <h6>
              ABOUT US
            </h6>
            <p>
              현대 사회에서는 바쁜 일상과 제한된 시간으로 인해 새로운 사람을 만나는 것이 점점 더 어려워지고 있습니다. 일과 가정, 그리고
              개인적인 시간 사이에서 균형을 맞추다 보면 새로운 인연을 찾을 여유가 없을 때가 많습니다. 이러한 문제를 해결하고자 저희는 만남
              어플을 만들게 되었습니다.
            </p>
          </div>

          <div class="col-md-6 col-lg-3">
            <h6>
              CONTACT US
            </h6>
            <div class="info_link-box">
              <a href="">
                <i class="fa fa-map-marker" aria-hidden="true"></i>
                <span> 45-12, Cheonho-daero 162-gil, Gangdong=gu, Seoul, Republic of Korea </span>
              </a>
              <a href="">
                <i class="fa fa-phone" aria-hidden="true"></i>
                <span>+82 01096289392</span>
              </a>
              <a href="">
                <i class="fa fa-envelope" aria-hidden="true"></i>
                <span>tmdgns9392@gmail.com</span>
              </a>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- footer section -->
    <footer class="footer_section">
      <div class="container">
        <p>
          &copy; <span id="displayYear"></span> All Rights Reserved By
          <a href="https://html.design/">Free Html Templates</a>
        </p>
      </div>
    </footer>
    <!-- footer section -->
  </section>
  <!-- end info section -->

  <script src="/Web-Site/resources/css/js/jquery-3.4.1.min.js"></script>
  <script src="js/bootstrap.js"></script>
