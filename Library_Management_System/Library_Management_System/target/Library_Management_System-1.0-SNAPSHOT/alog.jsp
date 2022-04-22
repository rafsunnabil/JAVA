<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Login Page</title>
</head>
<body>

<form action="AlogServlet" method="post">



    <div class="container">
        <h3 align="center">Admin Login</h3>
        <%--@declare id="username"--%><%--@declare id="password"--%>
        <label for="username"><b>Username</b></label>
        <input type="text" placeholder="Enter Username" name="user" required>

        <label for="password"><b>Password</b></label>
        <input type="password" placeholder="Enter Password" name="pwd" required>

        <button type="submit">Login</button>
    </div>


</form>
</body>
</html>