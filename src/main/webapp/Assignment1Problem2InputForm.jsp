<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 1/30/21
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<link
  rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  crossorigin="anonymous"
>
<link rel="stylesheet" type="text/css" href="style.css"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Input Form (Assignment 1 Problem 2)</title>
</head>
<body>
<div class="nav nav-tabs navbar-light bg-light">
  <a
    class="nav-link"
    href="index.jsp"
  >
    Assignment 1: Jason Rimer
  </a>
  <a
    class="nav-link"
    href="Assignment1Problem1InputForm.jsp"
  >
    Problem 1
  </a>
  <a
    class="nav-link active"
    href="Assignment1Problem2InputForm.jsp"
  >
    Problem 2
  </a>
</div>
<div class="container-fluid">
  <h4 class="display-4">Input Form</h4>
  <form
    action="Reverser"
    method="GET"
    class="form-group"
  >
    <input
      type="text"
      name="text"
      placeholder="Enter text..."
      class="form-control-lg"
    />
    <input
      type="submit"
      value="Submit"
      class="form-control-lg btn-primary"
    />
  </form>
</div>
</body>
</html>
