<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Issue Book</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<section>
    <header>
        <h1 align="center"><p> Central Library </p></h1>
    </header>
</section>

<section>
    <br>
    <form action="/action_page.php" style="border:1px solid #ccc">
        <div class="container">
            <%--@declare id="firstname"--%><%--@declare id="username"--%><%--@declare id="password"--%><%--@declare id="email"--%><%--@declare id="address"--%><%--@declare id="lastname"--%>
            <h1 align="center">Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
            <hr>

            <label for="firstname"><b>First Name: </b></label> <br>
            <input type="text" placeholder="Enter First Name" name="firstname" required> <br>

            <label for="lastname"><b>Last Name: </b></label> <br>
            <input type="text" placeholder="Enter Last Name" name="lastname" required> <br>

            <label for="username"><b>Username: </b></label> <br>
            <input type="text" placeholder="Enter Username" name="username" required> <br>

            <label for="password"><b>Password: </b></label> <br>
            <input type="password" placeholder="Enter Password" name="password" required> <br>

            <label for="email"><b>Email: </b></label> <br>
            <input type="text" placeholder="Enter Email" name="email" required> <br>

            <label for="address"><b>Address: </b></label> <br>
            <input type="text" placeholder="Enter Address" name="address" required> <br>
            <p>By creating an account you agree to our <a href="terms&policy.jsp" style="color:dodgerblue">Terms & Privacy</a>.</p>

            <div class="clearfix">
                <button type="submit" class="btn btn-danger"> SignUp </button>
                <button type="submit" class="btn btn-primary"> Cancel </button>
            </div>

            <br>

            <div class="container signin">
                <p>Already have an account? <a href="login">Sign in</a>.</p>
            </div>
        </div>
    </form>

    <p>
        <%
            if (request.getSession().getAttribute("success") != null) {
                String msg = request.getSession().getAttribute("success").toString();
                out.println(msg);
            }
        %>
    </p>
    </div>
</section>

<footer>
    <p>Copyright@2022</p>
</footer>

</body>
</html>