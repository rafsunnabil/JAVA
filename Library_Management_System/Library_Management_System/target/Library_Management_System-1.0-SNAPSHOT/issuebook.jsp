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

            <%--@declare id="bookid"--%><%--@declare id="userid"--%><%--@declare id="username"--%><%--@declare id="phoneno"--%><%--@declare id="issuedate"--%>
            <h1 align="center">Issue Book</h1>
            <p>Please fill in this form to issue book.</p>
            <hr>

            <label for="bookid"><b>Book ID: </b></label> <br>
            <input type="text" placeholder="Book Id" name="bookid" required> <br>

            <label for="userid"><b>User Id : </b></label> <br>
            <input type="text" placeholder="User Id" name="userid" required> <br>

            <label for="username"><b>User Name: </b></label> <br>
            <input type="text" placeholder="User Name" name="username" required> <br>

            <label for="phoneno"><b>Mobile No: </b></label> <br>
            <input type="text" placeholder="Mobile No" name="phoneno" required> <br>

            <label for="issuedate"><b>Issue Date: </b></label> <br>
            <input type="text" placeholder="Issue Date" name="issuedate" required> <br>
                <br>

            <div class="clearfix">
                <button type="submit" class="btn btn-danger"> Issue Book </button>
                <button type="submit" class="btn btn-primary"> Cancel </button>
            </div>

            <br>
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