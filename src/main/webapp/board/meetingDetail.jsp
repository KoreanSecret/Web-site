<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Meeting Detail</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            margin: 0;
            padding: 20px;
        }
        .container {
            max-width: 600px;
            margin: auto;
            padding: 20px;
            background-color: white;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        h2 {
            text-align: center;
        }
        .details {
            margin-top: 20px;
        }
        .details dt {
            font-weight: bold;
            margin-top: 10px;
        }
        .details dd {
            margin-left: 0;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 20px;
        }
        .back-link a {
            color: #4CAF50;
            text-decoration: none;
        }
        .back-link a:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Meeting Detail</h2>
        <dl class="details">
            <dt>Meeting No:</dt>
            <dd>${meeting.meeting_no}</dd>
            <dt>Title:</dt>
            <dd>${meeting.title}</dd>
            <dt>Description:</dt>
            <dd>${meeting.description}</dd>
            <dt>Location Name:</dt>
            <dd>${meeting.location_name}</dd>
            <dt>Location Address:</dt>
            <dd>${meeting.location_address}</dd>
            <dt>Location Latitude:</dt>
            <dd>${meeting.location_latitude}</dd>
            <dt>Location Longitude:</dt>
            <dd>${meeting.location_longitude}</dd>
            <dt>Host ID:</dt>
            <dd>${meeting.host_id}</dd>
            <dt>Host Photo:</dt>
            <dd><img src="${meeting.host_photo}" alt="Host Photo" width="100"></dd>
        </dl>
        <div class="back-link">
            <a href="meetingList">Back to Meeting List</a>
        </div>
    </div>
</body>
</html>
