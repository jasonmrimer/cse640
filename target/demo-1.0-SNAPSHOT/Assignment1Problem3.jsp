<%--
  Assignment 1 Problem 3.jsp
  User: engineer
  Date: 2/3/21
  Time: 10:51 PM
--%>
<link
  rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  crossorigin="anonymous"
>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<jsp:include page="header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_1_PROBLEM_3"/>
</jsp:include>
<body>
<h1>Servlet Context</h1>
<div>Servlet Contexts provide global traits to all servlets and will be shared across every instance of the servlet
  class. This contrasts the Servlet Config traits that can be tailored to each individual instance of a servlet. For
  example, a Servlet Context could be used in regional deployments to set the default country and language setting for
  every new servlet (e.g., setting all Amazon.uk servlets to use British Pounds as the default currency).
</div>
</body>
</html>
