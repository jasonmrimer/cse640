<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 1/30/21
  Time: 12:01 PM
  To change this template use File | Settings | File Templates.
--%>
<link
  rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  crossorigin="anonymous"
>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <div class="nav nav-tabs navbar-light bg-light">
    <a
      class="nav-link"
      href="index.jsp"
    >
      Assignment 1: Jason Rimer
    </a>
    <a
      class="nav-link active"
      href="Assignment1Problem1InputForm.jsp"
    >
      Problem 1
    </a>
    <a
      class="nav-link"
      href="Assignment1Problem2InputForm.jsp"
    >
      Problem 2
    </a>
  </div>
  <title>Output (Assignment 1 Problem 1)</title>
</head>
<body>
<h1>bienvenido</h1>
<div><%=request.getParameter("reversedText")%>
</div>
</body>
</html>
