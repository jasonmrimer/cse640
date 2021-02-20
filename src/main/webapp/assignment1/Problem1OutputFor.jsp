<%--
  Assignment 1 Problem 1 Output For.jsp
  User: engineer
  Date: 1/30/21
  Time: 12:01 PM
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
  <jsp:param name="currentPage" value="ASSIGNMENT_1"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_1_PROBLEM_1"/>
  </jsp:include>
  <div class="container-fluid col py-3">
    <h4 class="display-4">Output For</h4>
    <form
      action="Problem1InputForm.jsp"
      method="GET"
      class="form-group"
    >
      <input
        type="text"
        name="textToReverse"
        placeholder="Enter text..."
        class="form-control-lg text-muted"
        value="<%=request.getParameter("originalText")%>"
        disabled="disabled"
      />
      <input
        type="submit"
        value="Submit"
        class="form-control-lg btn-disabled"
        disabled="disabled"
      />
      <label
        class="form-control-lg text-success"
      >
        <%=request.getParameter("reversedText")%>
      </label>
    </form>
  </div>
</div>
</body>
</html>
