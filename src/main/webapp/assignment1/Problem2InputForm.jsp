<%--
  Assignment 1 Problem 2 Input Form.jsp
  User: engineer
  Date: 1/30/21
  Time: 3:06 PM
--%>
<link
  rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  crossorigin="anonymous"
>
<link rel="stylesheet" type="text/css" href="../style.css"/>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="../header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_1"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_1_PROBLEM_2"/>
  </jsp:include>
  <div class="container-fluid col py-3">
    <h4 class="display-4">Input Form</h4>
    <form
      action="/Reverser"
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
</div>
</body>
</html>
