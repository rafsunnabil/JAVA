<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Add Book</title>
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


            <%--@declare id="bookname"--%><%--@declare id="bookid"--%><%--@declare id="author"--%><%--@declare id="price"--%><%--@declare id="quantity"--%><%--@declare id="available"--%>

            <h1 align="center">Add Book</h1>
            <p>Please fill in this form to add book.</p>
            <hr>

            <label for="bookname"><b>Book Name: </b></label> <br>
            <input type="text" placeholder="Enter Book Name" name="bookname" required> <br>

            <label for="bookid"><b>Book id: </b></label> <br>
            <input type="text" placeholder="Enter Book Id" name="bookid" required> <br>

            <label for="author"><b>Author Name: </b></label> <br>
            <input type="text" placeholder="Enter Author Name" name="author" required> <br>

            <label for="price"><b>Price: </b></label> <br>
            <input type="text" placeholder="Enter Price" name="price" required> <br>

            <label for="quantity"><b>Book Quantity: </b></label> <br>
            <input type="text" placeholder="Enter Total No" name="quantity" required> <br>

            <label for="available"><b>Available: </b></label> <br>
            <input type="text" placeholder="Enter Book Available" name="available" required> <br>

            <div class="clearfix">
                <button type="submit" class="btn btn-danger"> Save Book </button>
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