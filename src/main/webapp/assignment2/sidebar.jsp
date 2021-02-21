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
  String currentSubPage = request.getParameter("currentSubPage");
%>
<%!
  String isActive(String page, String currentSubPage) {
    return page.equals(currentSubPage)
      ? "list-group-item list-group-item-action active"
      : "list-group-item list-group-item-action";
  }
%>
<head>
    <div id="sidebar-container" class="sidebar-expanded d-none d-md-block col-2">
      <ul class="list-group list-group-tabs sticky-top sticky-offset">
        <a
          class="<%=isActive("ASSIGNMENT_2_PROBLEM_2", currentSubPage)%>"
          href="/ControllerA2P2"
        >
          Problem 2
        </a>
        <a
          class="<%=isActive("ASSIGNMENT_2_PROBLEM_3", currentSubPage)%>"
          href="/GreetingRetriever"
        >
          Problem 3
        </a>
        <a
          class="<%=isActive("ASSIGNMENT_2_PROBLEM_4", currentSubPage)%>"
          href="/ControllerA2P4"
        >
          Problem 4
        </a>
      </ul>
    </div>
</head>
</html>
<style type="text/css">
    .sticky-offset {
        top: 56px;
    }
    #sidebar-container {
        min-height: 100vh;
    }
</style>