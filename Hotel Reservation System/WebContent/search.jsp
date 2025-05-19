<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
    <title>Available Rooms</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #f3f4f6;
            padding: 40px;
        }
        .room-card {
            background: white;
            padding: 20px;
            border-radius: 10px;
            margin: 10px auto;
            max-width: 500px;
            box-shadow: 0 0 10px rgba(0,0,0,0.1);
        }
        .room-card p {
            margin: 10px 0;
        }
        .room-card a {
            display: inline-block;
            margin-top: 10px;
            padding: 10px 15px;
            background: #27ae60;
            color: white;
            text-decoration: none;
            border-radius: 5px;
        }
    </style>
</head>
<body>
<%
ResultSet rs = (ResultSet) request.getAttribute("rooms");
boolean found = false;
while (rs.next()) {
    found = true;
%>
<div class="room-card">
    <p><strong>Room No:</strong> <%= rs.getString("room_number") %></p>
    <p><strong>Category:</strong> <%= rs.getString("category") %></p>
    <p><strong>Price:</strong> ₹<%= rs.getString("price") %></p>
    <a href="BookServlet?id=<%= rs.getInt("id") %>">Book Now</a>
</div>
<%
}
if (!found) {
%>
    <p style="text-align:center; color:red;">No rooms available in this category.</p>
<%
}
%>
</body>
</html>