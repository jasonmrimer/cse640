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
    System.out.println(page.equals(currentPage) ? "nav-link active" : "nav-link");
    return page.equals(currentPage) ? "nav-link active" : "nav-link";
  }
%>
<head>
  <title>CSE 640 Rimer</title>
  <div class="nav nav-tabs navbar-light bg-light navbar-assignment1">
    <a class="<%=isActive("HOME", currentPage)%>" href="/index.jsp">Assignment 1: Jason Rimer</a>
    <a class="<%=isActive("ASSIGNMENT_1_PROBLEM_1", currentPage)%>" href="/assignment1/Problem1InputForm.jsp">Problem 1</a>
    <a class="<%=isActive("ASSIGNMENT_1_PROBLEM_2", currentPage)%>" href="/assignment1/Problem2InputForm.jsp">Problem 2</a>
    <a class="<%=isActive("ASSIGNMENT_1_PROBLEM_3", currentPage)%>" href="/assignment1/Problem3.jsp">Problem 3</a>
    <a class="<%=isActive("ASSIGNMENT_1_PROBLEM_4", currentPage)%>" href="/ContextDemoServlet">Problem 4</a>
  </div>
</head>
</html>
<style type="text/css">
  .navbar-assignment1 {
      display: flex;
      flex-direction: column;
  }
</style>