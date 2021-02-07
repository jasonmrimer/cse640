<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 1/30/21
  Time: 3:07 PM
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
<jsp:include page="header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_1_PROBLEM_2"/>
</jsp:include>
<body>
<div class="container-fluid">
  <h4 class="display-4">Output For</h4>
  <form
    action="Assignment1Problem1InputForm.jsp"
    method="GET"
    class="form-group"
  >
    <input
      type="text"
      name="textToReverse"
      placeholder="Enter text..."
      class="form-control-lg text-muted"
      value="<%=request.getAttribute("originalText")%>"
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
      <%=request.getAttribute("reversedText")%>
    </label>
  </form>
</div>
</body>
</html>
