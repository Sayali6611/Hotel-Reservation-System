<!DOCTYPE html>
<html>
<head>
    <title>Hotel Room Search</title>
    <style>
        body {
            font-family: 'Segoe UI', sans-serif;
            background: linear-gradient(to right, #2980b9, #6dd5fa);
            display: flex;
            height: 100vh;
            align-items: center;
            justify-content: center;
        }
        .search-box {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 20px rgba(0,0,0,0.2);
            text-align: center;
        }
        select, input[type=submit] {
            padding: 10px;
            margin-top: 15px;
            width: 100%;
            border-radius: 5px;
            border: 1px solid #ccc;
        }
        input[type=submit] {
            background: #2980b9;
            color: white;
            cursor: pointer;
            border: none;
        }
        h2 {
            color: #333;
        }
    </style>
</head>
<body>
<div class="search-box">
    <h2>Search Available Rooms</h2>
    <form action="SearchServlet" method="post">
        <select name="category">
            <option value="Single">Single</option>
            <option value="Standard">Standard</option>
            <option value="Suite">Suite</option>
        </select>
        <input type="submit" value="Search">
    </form>
</div>
</body>
</html>