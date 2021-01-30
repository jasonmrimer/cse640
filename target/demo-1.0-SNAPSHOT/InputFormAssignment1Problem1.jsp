<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 1/30/21
  Time: 12:01 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Input (Assignment 1 Problem 1)</title>
</head>
<body>
<%
  String text = "abcd";
%>

<h1>holaa</h1>
<form action="OutputForAssignment1Problem1.jsp" method="GET">
  <input
    type="text"
    name="textToDisplay"
    placeholder="Enter text..."
  />
  <input
    type="hidden"
    name="reversedText"
    value="<%=new StringBuilder(text).reverse().toString()%>"
  />
  <input type="submit" value="Submit"/>
</form>
</body>
</html>
