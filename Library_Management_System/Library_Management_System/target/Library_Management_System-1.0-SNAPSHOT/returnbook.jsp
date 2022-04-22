=<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Return Book</title>
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
            <%--@declare id="bookid"--%><%--@declare id="returndate"--%><%--@declare id="userid"--%>
            <h1 align="center">Return Book Form</h1>
            <p>Please fill in this form to return book.</p>
            <hr>

            <label for="userid"><b>User Id: </b></label> <br>
            <input type="text" placeholder="User Id" name="userid" required> <br>

            <label for="bookid"><b>Book ID: </b></label> <br>
            <input type="text" placeholder="Book Id" name="bookid" required> <br>

            <label for="returndate"><b>Return Date: </b></label> <br>
            <input type="text" placeholder="Return Date" name="returndate" required> <br>

            <div class="clearfix">
                <button type="submit" class="btn btn-danger"> Return Book </button>
                <button type="submit" class="btn btn-primary"> Cancel </button>
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