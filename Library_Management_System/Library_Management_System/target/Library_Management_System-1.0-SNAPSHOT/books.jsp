<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Book List</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <style>
        body, html {
            height: 85%;
            margin: 0;
        }

        .bg {
            /* The image used */
            background-image: url("img_book2.jpg");

            /* Full height */
            height: 100%;

            /* Center and scale the image nicely */
            background-position: center;
            background-repeat: no-repeat;
            background-size: cover;
        }
    </style>
</head>
<body>

<header>
    <h2>Central Library</h2>
    <h3>Welcome to Central Library</h3>
</header>

<div class="bg">

<section>
    Name: The Big Bang Theory <br>
    ID: 101 <br>
    Author: Mushesh Kumar & Dr.Upesh Verma <br>
    Price: 400 <br>
    Available
    <button> <a href="buy.jsp" type="submit" class="btn btn-primary">BUY</a></button> <br>
    <button><a href="borrow.jsp" type="submit" class="btn btn-danger">BORROW</a></button>
</section>
<br>
<section>
    Name: JavaServer Pages Specification <br>
    ID: 102 <br>
    Author: Kim-man Chung <br>
    Price: 500 <br>
    Available<br>
    <button><a href="buy.jsp" type="submit" class="btn btn-primary">BUY</a> </button> <br>
    <button><a href="borrow.jsp" type="submit" class="btn btn-danger">BORROW</a></button>
</section>
</div>
<footer>
    <p>Copyright@2022</p>
</footer>

</body>
</html>