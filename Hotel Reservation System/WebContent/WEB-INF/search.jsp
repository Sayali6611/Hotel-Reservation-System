<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Search</title>
</head>
<body>
      <h1>Available Rooms</h1>
       <table border="1">
         <tr>
          <th>Room Type</th>
          <th>Price</th>
          <th>Action</th>
         </tr>
          <c : forEach var="room" items="${rooms}">
          
            <tr>
              <td>${room.room_type}</td>
               <td>${room.price}</td>
                 <td>
                 <form action="Booking" method="post">
                  <input type="hidden" name="roomId" value="${room.room_id}">
                  
                    <button type="submit">Book Now</button>
                 </form>
                 </td> 
            </tr>
            </c : forEach>
       </table>
</body>
</html>