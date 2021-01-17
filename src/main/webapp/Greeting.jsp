<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 1/15/21
  Time: 10:00 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<%
    String person = "?";
    String user = request.getParameter("user");
    if (user != null)
        person = user;
%>
Welcome to "Web Tools Platform",
<%=person%>!
</body>
</html>
