<!DOCTYPE html>
<html>
<head>
    <title>Book Room</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background-color: #e3f2fd;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
        }
        .booking-form {
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0,0,0,0.2);
            width: 350px;
        }
        input[type=text], input[type=email], input[type=date] {
            width: 100%;
            padding: 10px;
            margin-top: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        input[type=submit] {
            width: 100%;
            background: #3498db;
            color: white;
            padding: 10px;
            margin-top: 15px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        h2 {
            text-align: center;
            color: #333;
        }
    </style>
</head>
<body>
<div class="booking-form">
    <h2>Confirm Booking</h2>
    <form action="ConfirmBookingServlet" method="post">
        <input type="hidden" name="roomId" value="${roomId}">
        <input type="text" name="name" placeholder="Full Name" required>
        <input type="email" name="email" placeholder="Email" required>
        <input type="date" name="checkin" required>
        <input type="date" name="checkout" required>
        <input type="submit" value="Confirm Booking">
    </form>
</div>
</body>
</html>