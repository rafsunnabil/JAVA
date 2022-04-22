<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Borrow & Buy</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/styles.css"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1soBoqyl2QvZ6jIW3" crossorigin="anonymous">
</head>
<body>

<header>
    <h2>Central Library</h2>
</header>

<section>
    <br>

    <form action="register" method="post">

        <div class="form-group row">
            <label for="issue_date" class="col-sm-2 col-form-label">Issue_Date</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="issue_date" id="issue_date">
            </div>
        </div>

        <br>

        <div class="form-group row">
            <label for="return_date" class="col-sm-2 col-form-label">Return_Date</label>
            <div class="col-sm-10">
                <input type="text" class="form-control" name="return_date" id="return_date">
            </div>
        </div>

        <br>

        <input type="submit" class="btn btn-primary">
    </form>
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
</section>

<footer>
    <p>Copyright@2022</p>
</footer>

</body>
</html>