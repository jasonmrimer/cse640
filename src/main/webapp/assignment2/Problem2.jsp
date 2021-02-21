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
<html>
<jsp:include page="../header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_2"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_2_PROBLEM_2"/>
  </jsp:include>
  <div class="container-fluid col py-3">
    <div class="card">
      <div class="card-body">
        <h1 class="card-title">Local Context</h1>
        <h2 class="card-subtitle">
          This is the context info for the <i>cse640</i> app
        </h2>
        <div class="card-text">
          <span>Attr name:</span>
          <span>javax.websocket.server.ServerContainer</span>
        </div>
        <div class="card-text">
          <span>Attr value:</span>
          <span><%=request.getAttribute("localContext")%></span>
        </div>
      </div>
    </div>
    <div class="card">
      <div class="card-body">
        <h1 class="card-title">External Context</h1>
        <h2 class="card-subtitle">
          This is the context info for the <i>sidecar</i> app
        </h2>
        <div class="container-fluid info-request-dispatch">
          <h3 class="card-subtitle">RequestDispatcher via ServletRequest</h3>
          <div class="card-text">
            <span>Attr name:</span>
            <span>javax.websocket.server.ServerContainer</span>
          </div>
          <div class="card-text">
            <span>Attr value:</span>
            <span><%=request.getAttribute("foreignContextViaRequest")%></span>
          </div>
        </div>
        <div class="container-fluid info-request-dispatch">
          <h3 class="card-subtitle">RequestDispatcher via ServletContext</h3>
          <div class="card-text">
            <span>Attr name:</span>
            <span>javax.websocket.server.ServerContainer</span>
          </div>
          <div class="card-text">
            <span>Attr value:</span>
            <span><%=request.getAttribute("foreignContext")%></span>
          </div>
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
      margin-right:16px;
      margin-top: 16px;
  }
  i {
      color: darkslateblue;
  }
</style>
