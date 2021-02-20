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
  <div class="navbar navbar-expand-md nav-pills navbar-light bg-light fixed-top">
    <a
      class="<%=isActive("HOME", currentPage)%>"
      href="/index.jsp"
    >
      Assignment 1: Jason Rimer
    </a>
  </div>
</head>
</html>
<style type="text/css">
  body {
      padding-top: 56px;
  }
</style>
