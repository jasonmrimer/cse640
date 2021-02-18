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
          class="<%=isActive("ASSIGNMENT_1_PROBLEM_1", currentSubPage)%>"
          href="/assignment1/Problem1InputForm.jsp"
        >
          Problem 1
        </a>
        <a
          class="<%=isActive("ASSIGNMENT_1_PROBLEM_2", currentSubPage)%>"
          href="/assignment1/Problem2InputForm.jsp"
        >
          Problem 2
        </a>
        <a
          class="<%=isActive("ASSIGNMENT_1_PROBLEM_3", currentSubPage)%>"
          href="/assignment1/Problem3.jsp"
        >
          Problem 3
        </a>
        <a
          class="<%=isActive("ASSIGNMENT_1_PROBLEM_4", currentSubPage)%>"
          href="/ContextDemoServlet"
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
    .navigation {
        display: flex;
        flex-direction: column;
        align-items: flex-start;
    }
</style>