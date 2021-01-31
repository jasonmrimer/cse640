<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 1/30/21
  Time: 3:06 PM
  To change this template use File | Settings | File Templates.
--%>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="style.css"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <title>Input Form (Assignment 1 Problem 2)</title>
</head>
<body>
<div class="container">
  <h1>Input</h1>
  <form action="Reverser">
    <div class="form-group row">
      <input
        type="text"
        name="text"
        placeholder="Enter text..."
        class="form-control"
      />
      <input
        type="submit"
        value="Submit"
        class="btn btn-primary"
      >
    </div>
  </form>
</div>
</body>
<style type="text/css">
    .container {
        display: flex;
        align-items: center;
        flex-direction: column;
    }
</style>
</html>
