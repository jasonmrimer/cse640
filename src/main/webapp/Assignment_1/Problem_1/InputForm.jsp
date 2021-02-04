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
  <title>Input (Assignment 1 Problem 1)</title>
</head>
<body>
<div class="container">
  <h1 class="display-3">Assignment 1</h1>
  <h2 class="display-2">Problem 1</h2>
  <h3 class="display-1">Input Form</h3>
  <%
    String textToReverse = request.getParameter("textToReverse");
    if (textToReverse == null) {
  %>
  <form
    action="InputForm.jsp"
    method="GET"
    class="form-group"
  >
    <input
      type="text"
      name="textToReverse"
      placeholder="Enter text..."
      class="form-control-lg"
    />
    <input
      type="submit"
      value="Submit"
      class="form-control-lg btn-primary"
    />
  </form>
  <%
    } else {
      String revsersedText = new StringBuilder(textToReverse).reverse().toString();
      response.sendRedirect("Assignment1Problem1OutputFor.jsp?reversedText=" + revsersedText);
    }
  %>
</div>
</body>
</html>
