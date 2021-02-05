<%--
  Assignment 1 Problem 1 Output For.jsp
  User: engineer
  Date: 1/30/21
  Time: 12:01 PM
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
  <title>Output (Assignment 1 Problem 1)</title>
  <div class="nav nav-tabs navbar-light bg-light">
    <a class="nav-link" href="index.jsp">Assignment 1: Jason Rimer</a>
    <a class="nav-link active" href="Assignment1Problem1InputForm.jsp">Problem 1</a>
    <a class="nav-link" href="Assignment1Problem2InputForm.jsp">Problem 2</a>
    <a class="nav-link" href="Assignment1Problem3.jsp">Problem 3</a>
    <a class="nav-link" href="ContextDemoServlet">Problem 4</a>
  </div>
</head>
<body>
<div class="container-fluid">
  <h4 class="display-4">Output For</h4>
  <form
    action="Assignment1Problem1InputForm.jsp"
    method="GET"
    class="form-group"
  >
    <input
      type="text"
      name="textToReverse"
      placeholder="Enter text..."
      class="form-control-lg text-muted"
      value="<%=request.getParameter("originalText")%>"
      disabled="disabled"
    />
    <input
      type="submit"
      value="Submit"
      class="form-control-lg btn-disabled"
      disabled="disabled"
    />
    <label
      class="form-control-lg text-success"
    >
      <%=request.getParameter("reversedText")%>
    </label>
  </form>
</div>
</body>
</html>
