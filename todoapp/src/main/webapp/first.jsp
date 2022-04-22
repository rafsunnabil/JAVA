<%--
  Created by IntelliJ IDEA.
  User: Asus
  Date: 22-Feb-22
  Time: 9:01 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>First JSP</title>
</head>
<body>
    <%! int i = 10; %>

    <h1>First in JSP, <%= i %> </h1>

    <%
        for (int i = 0; i<5; i++){
            out.println(i);
        }
    %>

    <p>Copyright@<%= new java.util.Date() %></p>
</body>
</html>
