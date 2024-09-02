<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>모임 리스트</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        .header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding-bottom: 20px;
            border-bottom: 2px solid #ddd;
        }
        .container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
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
    </style>
</head>
<body>
    <div class="header">
        <h2>Meeting List</h2>
        <a href="createrMeeting.do" class="create-button">Create New Meeting</a>
    </div>
    <div class="container">
        <c:forEach var="meeting" items="${meetingList}">
            <div class="meeting-card">
                <h3>${meeting.TITLE}</h3>
                <p><strong>장소:</strong> ${meeting.LOCATION_NAME}</p>
                <p><strong>주소:</strong> ${meeting.LOCATION_ADDRESS}</p>
                <p><strong>Latitude:</strong> ${meeting.LOCATION_LATITUDE}</p>
                <p><strong>Longitude:</strong> ${meeting.LOCATION_LONGITUDE}</p>
                <p><strong>Host ID:</strong> ${meeting.HOST_ID}</p>
                <a href="meetingDetail.do?meetingNo=${meeting.MEETING_NO}">View Details</a>
            </div>
        </c:forEach>
    </div>
</body>
</html>
