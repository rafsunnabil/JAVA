<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

    <style>
        .topnav {
            overflow: hidden;
            background-color: #333;
        }

        /* Style the topnav links */
        .topnav a {
            float: left;
            display: block;
            color: #f2f2f2;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        /* Change color on hover */
        .topnav a:hover {
            background-color: #ddd;
            color: black;
        }
        body, html {
            height: 85%;
            margin: 0;
        }

        .bg {
            /* The image used */
            background-image: url("img_admin1.jpg");

            /* Full height */
            height: 95%;

            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }

        .bg > h1{
            background-color: rgba(128, 128, 128, 0.57);
            padding: 30px;
            text-align: center;
        }

    </style>
</head>
<body>

<header>
    <h2>Central Library</h2>
    <h3>Welcome to Central Library</h3>
</header>


<div class = "topnav">
    <a href="adminlogin.jsp">Login</a>
    <a href="index.jsp">Home</a>
</div>

    <div class="bg">

    </div>

<footer>
    <p>Copyright@2022</p>
</footer>


</body>
</html>


