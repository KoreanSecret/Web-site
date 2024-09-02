<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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

  <title>TIAMOU</title>

  <!-- slider stylesheet -->
  <link rel="stylesheet" type="text/css" href="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/assets/owl.carousel.min.css" />

  <!-- bootstrap core css -->
  <link rel="stylesheet" type="text/css" href="/Web-Site/resources/bootstrap.css" />

  <!-- Custom styles for this template -->
  <link href="/Web-Site/resources/style.css" rel="stylesheet" />
  <!-- responsive style -->
  <link href="/Web-Site/resources/responsive.css" rel="stylesheet" />
</head>

<body>
  
  <div class="hero_area">
    <div>
      <jsp:include page="/include/topMenu.jsp" />
    </div>
  </div>
  
  <div id="mycontent" class="container">
    <div class="row">
      <!-- Left column for map -->
      <div class="col-md-6">
        <div id="map" class="map" style="height:350px;"></div>

        <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=1a6d3635590ec24f8013216e31fd02a8"></script>
        <script>
          var mapContainer = document.getElementById('map'), 
              mapOption = { 
                  center: new kakao.maps.LatLng(33.450701, 126.570667), 
                  level: 3 
              };

          var map = new kakao.maps.Map(mapContainer, mapOption);
          var markerPosition  = new kakao.maps.LatLng(33.450701, 126.570667); 
          var marker = new kakao.maps.Marker({
              position: markerPosition
          });

          marker.setMap(map);

          var iwContent = '<div style="padding:5px;">Hello World! <br><a href="https://map.kakao.com/link/map/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">큰지도보기</a> <a href="https://map.kakao.com/link/to/Hello World!,33.450701,126.570667" style="color:blue" target="_blank">길찾기</a></div>', 
              iwPosition = new kakao.maps.LatLng(33.450701, 126.570667); 

          var infowindow = new kakao.maps.InfoWindow({
              position : iwPosition, 
              content : iwContent 
          });

          infowindow.open(map, marker); 
        </script>
      </div>

      <!-- Right column for 글쓰기 form -->
      <div class="col-md-6">
        <h2>글쓰기</h2>
        <form id="writeForm" action="/Web-Site/write.do" method="post">
          <div class="form-group">
            <label for="title">제목</label>
            <input type="text" class="form-control" id="title" name="title" required>
          </div>
          <div class="form-group">
            <label for="username">이름</label>
            <input type="text" class="form-control" id="username" name="username" value="${sessionScope.userInfo.username}" required readonly>
          </div>
          <div class="form-group">
            <label for="id">아이디</label>
            <input type="text" class="form-control" id="id" name="id" value="${sessionScope.userInfo.id}" required readonly>
          </div>
          <div class="form-group">
            <label for="content">내용</label>
            <textarea class="form-control" id="content" name="content" rows="5" required></textarea>
          </div>
          <button type="submit" class="btn btn-primary">저장</button>
        </form>
      </div>
    </div>
  </div>
  
  <!-- client section -->
 
  <!-- end client section -->

  <!-- info section -->

  <footer>
    <%@ include file="/include/footer.jsp"%>
  </footer>

    <script src="/Web-Site/resources/css/js/jquery-3.4.1.min.js"></script>
    <script src="/Web-Site/resources/css/js/jquery-3.4.1.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/OwlCarousel2/2.3.4/owl.carousel.min.js"></script>
    <script src="/Web-Site/resources/css/js/custom.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js"></script>
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>

</html>
