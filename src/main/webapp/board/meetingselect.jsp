<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>TIAMOU</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        .header {
            background-color: #333;
            color: white;
            padding: 10px 0;
            text-align: center;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            padding: 20px 0;
        }
        .meeting-card {
            background-color: #fff;
            border: 1px solid #ddd;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            margin: 10px;
            padding: 20px;
            width: 300px;
            text-align: center;
        }
        .meeting-card img {
            max-width: 100%;
            border-radius: 50%;
            margin-bottom: 10px;
        }
        .meeting-card h3 {
            margin: 10px 0;
            color: #333;
        }
        .meeting-card p {
            margin: 5px 0;
            color: #666;
        }
        .meeting-card a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 20px;
            background-color: #4CAF50;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
        .meeting-card a:hover {
            background-color: #45a049;
        }
        .member-info {
            display: flex;
            align-items: center;
            justify-content: center;
            margin-top: 20px;
        }
        .member-info img {
            border-radius: 50%;
            margin-right: 20px;
        }
        .member-info div {
            text-align: left;
        }
        .instructions {
            text-align: center;
            margin-top: 20px;
        }
        .similar-meetings {
            display: flex;
            justify-content: center;
            margin-top: 20px;
        }
        .similar-meetings .meeting-card {
            width: 200px;
        }
        .install-app {
            display: flex;
            justify-content: center;
            align-items: center;
            margin-top: 30px;
        }
        .install-app a {
            display: inline-block;
            padding: 15px 30px;
            background-color: #007BFF;
            color: white;
            text-decoration: none;
            border-radius: 25px;
            font-size: 18px;
            font-weight: bold;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            transition: background-color 0.3s, box-shadow 0.3s;
        }
        .install-app a:hover {
            background-color: #0056b3;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>
<body>
    <div class="header">
        <h1>TIAMOU</h1>
    </div>
    
    <div class="container">
        <div class="meeting-card">
            <h3>${meeting.title}</h3>
            <p>${meeting.description}</p>
            <p><strong>장소:</strong> ${meeting.locationName}</p>
            <p><strong>주소:</strong> ${meeting.locationAddress}</p>
            <p><strong>위도:</strong> ${meeting.locationLatitude}</p>
            <p><strong>경도:</strong> ${meeting.locationLongitude}</p>
            <p><strong>주최자 아이디:</strong> ${meeting.hostId}</p>
        </div>
    </div>
    
    <div class="member-info">
        <img src="<c:out value='${member.photoUrl}'/>" alt="\upload\freinds.jpg" width="100" height="100">
        <div>
            <h2>${member.name}</h2>
            <p>${member.description}</p>
        </div>
    </div>
    
    <div class="instructions">
        <p><strong>모임 참가자 수:</strong> ${meeting.participants}</p>
        <p><strong>장소:</strong> ${meeting.location}</p>
    </div>
    
    <div class="similar-meetings">
        <c:forEach var="similarMeeting" items="${similarMeetings}">
            <div class="meeting-card">
                <h3>${similarMeeting.title}</h3>
                <p>${similarMeeting.description}</p>
            </div>
        </c:forEach>
    </div>
    
    <div class="install-app">
        <a href="meetingList.do" class="create-button">모임 참여하기</a>
    </div>
</body>
</html>
