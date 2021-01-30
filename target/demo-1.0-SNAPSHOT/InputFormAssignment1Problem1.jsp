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
<h1>hola</h1>
<form action="OutputForAssignment1Problem1.jsp" method="GET">
    <input type="text" name="textToDisplay" placeholder="Enter text..."/>
    <input type="submit" value="Submit"/>
</form>
<input type="text" id="inputString" placeholder="Enter text"/>
<button onclick="reverse()">Submit via JS</button>
<script>
    function reverse() {
      let text = '';
      text = document.getElementById('inputString').value;
      console.log(text);
    }
</script>
</body>
</html>
