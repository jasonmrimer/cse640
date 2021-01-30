<%@ page import="java.util.HashSet" %>
<%@ page import="java.util.function.Consumer" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.LinkedHashSet" %>
<%@ page import="java.util.LinkedList" %><%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 2/3/21
  Time: 10:51 PM
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
  <title>Assignment 1 Problem 4</title>
  <div class="nav nav-tabs navbar-light bg-light">
    <a class="nav-link" href="index.jsp">Assignment 1: Jason Rimer</a>
    <a class="nav-link" href="Assignment1Problem1InputForm.jsp">Problem 1</a>
    <a class="nav-link" href="Assignment1Problem2InputForm.jsp">Problem 2</a>
    <a class="nav-link" href="Assignment1Problem3.jsp">Problem 3</a>
    <a class="nav-link active" href="ContextDemoServlet">Problem 4</a>
  </div>
</head>
<body>
<%
  LinkedList<String> attributes = (LinkedList<String>) request.getAttribute("printableAttributes");
  for (String attribute : attributes) {
%>
<div>
  <%=attribute%>
</div>
<%
  }
%>
<%
  LinkedList<String> parameters = (LinkedList<String>) request.getAttribute("printableParameters");
  for (String parameter : parameters) {
%>
<div>
  <%=parameter%>
</div>
<%
  }
%>
</body>
</html>
