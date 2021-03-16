<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 2/20/21
  Time: 12:21 PM
  To change this template use File | Settings | File Templates.
--%>
<link
  rel="stylesheet"
  href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
  integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
  crossorigin="anonymous"
>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib uri="/DateTimeTagLibrary" prefix="cdt"%>
<html>
<jsp:include page="../header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_1"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_1_PROBLEM_1"/>
  </jsp:include>
  <div class="container-fluid col py-3">
    <div class="card">
      <div class="card-body">
        <h1 class="card-title">Current Date</h1>
        <h2 class="card-subtitle">
          A bodyless tag fetches a red, Helvetica date:
        </h2>
        <div class="card-text">
          <cdt:currentDateTime/>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
<style type="text/css">
  .card {
      margin-right:16px;
      margin-top: 16px;
  }
  i {
      color: darkslateblue;
  }
</style>
