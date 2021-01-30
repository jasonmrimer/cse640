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
<h1>holaa</h1>
<%
  String textToReverse = request.getParameter("textToReverse");
  if (textToReverse == null) {
%>
<form action="Assignment1Problem1InputForm.jsp" method="GET">
  <input
    type="text"
    name="textToReverse"
    placeholder="Enter text..."
  />
  <input type="submit" value="Submit"/>
</form>
<%
  } else {
    String revsersedText = new StringBuilder(textToReverse).reverse().toString();
    response.sendRedirect("Assignment1Problem1OutputFor.jsp?reversedText="+revsersedText);
  }
%>
</body>
</html>
