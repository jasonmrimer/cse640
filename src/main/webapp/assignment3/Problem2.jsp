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
<jsp:useBean id="mathBean" class="assignment3.BeanMath"/>
<html>
<jsp:include page="../header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_3"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_3_PROBLEM_2"/>
  </jsp:include>
  <jsp:setProperty name="mathBean" property="var1" value="9.8"/>
  <jsp:setProperty name="mathBean" property="var2" value="6.2"/>
  <div class="container-fluid col py-3">
    <div class="card add">
      <jsp:setProperty name="mathBean" property="operation" value="Add"/>
      <div class="card-body">
        <h1 class="card-title">
          <jsp:getProperty name="mathBean" property="operation"/>
          via Bean
        </h1>
        <div class="card-text">
          <div class="equation">
            <jsp:getProperty name="mathBean" property="var1"/>
            +
            <jsp:getProperty name="mathBean" property="var2"/>
            =
            <%=mathBean.operate()%>
          </div>
        </div>
      </div>
    </div>
    <div class="card subtract">
      <jsp:setProperty name="mathBean" property="operation" value="Subtract"/>
      <div class="card-body">
        <h1 class="card-title">
          <jsp:getProperty name="mathBean" property="operation"/>
          via Bean
        </h1>
        <div class="card-text">
          <div class="equation">
            <jsp:getProperty name="mathBean" property="var1"/>
            -
            <jsp:getProperty name="mathBean" property="var2"/>
            =
            <%=mathBean.operate()%>
          </div>
        </div>
      </div>
    </div>
  </div>
</div>
</body>
</html>
<style type="text/css">
    .card {
        margin-right: 16px;
        margin-top: 16px;
    }

    i {
        color: darkslateblue;
    }
</style>
