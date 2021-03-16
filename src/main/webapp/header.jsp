<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 2/6/21
  Time: 8:43 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<%
  String currentPage = request.getParameter("currentPage");
%>
<%!
  String isActive(String page, String currentPage){
    return page.equals(currentPage) ? "nav-link active" : "nav-link";
  }
%>
<head>
  <title>CSE 640 Rimer</title>
  <div class="nav nav-tabs navbar-light bg-light fixed-top">
    <a
      class="<%=isActive("HOME", currentPage)%>"
      href="/index.jsp"
    >
      Home
    </a>
    <a
      class="<%=isActive("ASSIGNMENT_1", currentPage)%>"
      href="/assignment1/LandingPage.jsp"
    >
      Assignment 1
    </a>
    <a
      class="<%=isActive("ASSIGNMENT_2", currentPage)%>"
      href="/assignment2/LandingPage.jsp"
    >
      Assignment 2
    </a>
    <a
      class="<%=isActive("ASSIGNMENT_3", currentPage)%>"
      href="/assignment3/LandingPage.jsp"
    >
      Assignment 3
    </a>
  </div>
</head>
</html>
<style type="text/css">
  body {
      padding-top:56px;
  }
</style>
