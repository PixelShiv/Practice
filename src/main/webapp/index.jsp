<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.Date, java.text.SimpleDateFormat" %>
<%
    String name = "Shiva"; // Your name
    String quote = "The best way to predict the future is to create it."; // Pleasant quote
    SimpleDateFormat sdf = new SimpleDateFormat("EEEE, MMMM dd, yyyy HH:mm:ss");
    String currentTime = sdf.format(new Date());
%>
<!DOCTYPE html>
<html>
<head>
    <title>My Awesome App</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #6a11cb, #2575fc);
            color: white;
            text-align: center;
            padding-top: 100px;
        }
        h1 {
            font-size: 3em;
            margin-bottom: 20px;
            text-shadow: 2px 2px #000;
        }
        p {
            font-size: 1.5em;
            margin-top: 10px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ff9800;
            color: white;
            text-decoration: none;
            font-weight: bold;
            border-radius: 5px;
            margin-top: 20px;
            transition: 0.3s;
        }
        .button:hover {
            background-color: #e68900;
        }
        .footer {
            margin-top: 50px;
            font-size: 1em;
            color: #f0f0f0;
        }
    </style>
</head>
<body>
    <h1>Welcome to My Java App, <%= name %>!</h1>
    <p>🚀 This is a simple web application powered by JSP & Tomcat.</p>
    <p>💡 Quote of the day: "<%= quote %>"</p>
    <p>🕒 Current time and date: <%= currentTime %></p>
    <a href="#" class="button">Click Me!</a>
    <div class="footer">
        Made with ❤️ by <%= name %>
    </div>
</body>
</html>
