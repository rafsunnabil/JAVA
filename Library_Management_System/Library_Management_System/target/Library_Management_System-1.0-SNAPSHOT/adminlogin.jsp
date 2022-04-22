<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Admin Login</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<header>
    <h2>Central Library</h2>
</header>

<section>
    <br>

    <form action="/action_page.php" method="post">
        <div class="imgcontainer">
            <img src="img_avatar2.png" alt="Avatar" class="avatar">
        </div>

        <div class="container">
            <h3 align="center">Login Form</h3>
            <%--@declare id="username"--%><%--@declare id="password"--%>
            <label for="username"><b>Username</b></label>
            <input type="text" placeholder="Enter Username" name="username" required>

            <label for="password"><b>Password</b></label>
            <input type="password" placeholder="Enter Password" name="password" required>

            <button> <a  href="adminpage.jsp"  type="submit" class="btn btn-primary">LOGIN</a></button>
            <label>
                <input type="checkbox" checked="checked" name="remember"> Remember me
            </label>
        </div>

        <div class="container" style="background-color:#f1f1f1">
            <button type="button" class="cancelbtn">Cancel</button>
        </div>

    </form>
    <p>
        <%
            if (request.getSession().getAttribute("error") != null) {
                String msg = request.getSession().getAttribute("error").toString();
                out.println(msg);
            }
        %>

    </p>
</section>

<footer>
    <p>Copyright@2022</p>
</footer>

</body>
</html>