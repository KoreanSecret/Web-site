<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!-- header section strats -->
<header class="header_section">
  <nav class="navbar navbar-expand-lg custom_nav-container ">
    <a class="navbar-brand" href="${ pageContext.request.contextPath }/lionel.do">
      <span>
        TIAMOU
      </span>
    </a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class=""></span>
    </button>

    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav  ">
        <li class="nav-item active">
          <a class="nav-link" href="/index.jsp">Home <span class="sr-only">(current)</span></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="meetingList.do">MEET</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="board/why.html"></a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="${ pageContext.request.contextPath }/post.do">Board</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="write.jsp">Write</a>
        </li>
      </ul>
      <div class="user_option">
        <c:choose>
          <c:when test="${not empty sessionScope.userVO}">
            <a href="${ pageContext.request.contextPath }/logout.jsp">
              <i class="fa fa-sign-out" aria-hidden="true"></i>
              <span>Logout</span>
            </a>
          </c:when>
          <c:otherwise>
            <a href="${ pageContext.request.contextPath }/loginForm.do">
              <i class="fa fa-user" aria-hidden="true"></i>
              <span>Login</span>
            </a>
          </c:otherwise>
        </c:choose>
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
