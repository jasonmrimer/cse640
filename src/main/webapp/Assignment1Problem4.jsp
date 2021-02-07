<%@ page import="java.util.*" %><%--
  Assignment 1 Problem 4.jsp
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
  <jsp:param name="currentPage" value="ASSIGNMENT_1_PROBLEM_4"/>
</jsp:include>
<body>
<div class="container-fluid">
  <div class="card">
    <div class="card-body">
      <h2 class="card-title">Attributes</h2>
      <table class="table">
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Value</th>
        </tr>

        <%
          LinkedHashMap<String, String> attributes = (LinkedHashMap<String, String>) request.getAttribute("attributes");
          for (Map.Entry<String, String> attribute : attributes.entrySet()) {
        %>
        <tr>
          <td class="text-truncate">
            <%=attribute.getKey()%>
          </td>
          <td class="text-truncate">
            <%=attribute.getValue()%>
          </td>
        </tr>
        <%
          }
        %>
      </table>
    </div>
  </div>
  <div class="card">
    <div class="card-body">
      <h2 class="card-title">Parameters</h2>
      <table class="table">
        <tr>
          <th scope="col">Name</th>
          <th scope="col">Value</th>
        </tr>
        <%
          LinkedHashMap<String, String> parameters = (LinkedHashMap<String, String>) request.getAttribute("parameters");
          for (Map.Entry<String, String> parameter : parameters.entrySet()) {
        %>
        <tr>
          <td>
            <%=parameter.getKey()%>
          </td>
          <td>
            <%=parameter.getValue()%>
          </td>
        </tr>
        <%
          }
        %>
      </table>
    </div>
  </div>
</div>
</div>
</body>
<style type="text/css">
    .table {
        table-layout: fixed;
    }

    .card {
        margin-top: 32px;
        max-width: 40%;
    }

    .container-fluid {
        display: flex;
        flex-direction: row;
        justify-content: space-around;
    }
</style>
</html>
