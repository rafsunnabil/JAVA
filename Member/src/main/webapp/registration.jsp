<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Registration</title>
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

    <form action="register" method="post">
        <div class="form-group row">
            <label for="first_name" class="col-sm-2 col-form-label">First_Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="first_name" id="first_name">
            </div>
        </div>

        <br>

        <div class="form-group row">
            <label for="last_name" class="col-sm-2 col-form-label">Last_Name</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="last_name" id="last_name">
            </div>
        </div>

        <br>

        <div class="form-group row">
            <label for="username" class="col-sm-2 col-form-label">Username</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="username" id="username">
            </div>
        </div>

        <br>

        <div class="form-group row">
            <label for="password" class="col-sm-2 col-form-label">Password</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="password" id="password">
            </div>
        </div>

        <br>

        <div class="form-group row">
            <label for="email" class="col-sm-2 col-form-label">Email</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="email" id="email">
            </div>
        </div>

        <br>

        <div class="form-group row">
            <label for="phone_number" class="col-sm-2 col-form-label">Phone_Number</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="phone_number" id="phone_number">
            </div>
        </div>

        <br>

        <div class="form-group row">
            <label for="address" class="col-sm-2 col-form-label">Address</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="address" id="address">
            </div>
        </div>

        <br>

        <input type="submit" class="btn btn-primary">
    </form>
    <br>

    <a href="login">Login</a>

    <br>

    <p>
        <%
            if (request.getSession().getAttribute("success") != null) {
                String msg = request.getSession().getAttribute("success").toString();
                out.println(msg);
            }
        %>
    </p>
    <br>
    <a href="book.jsp">Home</a>
</section>

<footer>
    <p>Copyright@2022</p>
</footer>

</body>
</html>