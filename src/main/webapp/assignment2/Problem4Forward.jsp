<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 2/20/21
  Time: 7:26 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
  String setup = request.getAttribute("setupFromForward") == null
    ? ""
    : request.getAttribute("setupFromForward").toString();
  String punchline = request.getAttribute("punchlineFromForward") == null
    ? ""
    : request.getAttribute("punchlineFromForward").toString();
  String hidden = setup.equals("") ? "" : "hidden";
%>
<html>
<body>
<div class="card forward">
  <div class="card-body">
    <h1 class="card-title">Forward</h1>
    <span class="card-text">
      <%=setup%>
    </span>
    <span class="card-text">
      <%=punchline%>
    </span>
    <a
      class="card-link"
      href="/Forwarder"
      <%=hidden%>
    >
      Tell us a joke...
    </a>
  </div>
</div>
</body>
</html>
<style type="text/css">
    .card-body {
        display: flex;
        flex-direction: column;
    }
</style>
