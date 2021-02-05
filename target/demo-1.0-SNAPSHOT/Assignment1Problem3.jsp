<%--
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
  <title>Assignment 1 Problem 3</title>
  <div class="nav nav-tabs navbar-light bg-light">
    <a class="nav-link" href="index.jsp">Assignment 1: Jason Rimer</a>
    <a class="nav-link" href="Assignment1Problem1InputForm.jsp">Problem 1</a>
    <a class="nav-link" href="Assignment1Problem2InputForm.jsp">Problem 2</a>
    <a class="nav-link active" href="Assignment1Problem3.jsp">Problem 3</a>
    <a class="nav-link" href="ContextDemoServlet">Problem 4</a>
  </div>
</head>
<body>
<h1>Servlet Context</h1>
<div>Servlet Contexts provide global traits to all servlets and will be shared across every instance of the servlet class. This contrasts the Servlet Config traits that can be tailored to each individual instance of a servlet. For example, a Servlet Context could be used in regional deployments to set the default country and language setting for every new servlet (e.g., setting all Amazon.uk servlets to use British Pounds as the default currency).</div>
</body>
</html>
