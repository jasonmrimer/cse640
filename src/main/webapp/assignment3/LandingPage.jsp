<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 2/20/21
  Time: 11:14 AM
  To change this template use File | Settings | File Templates.
--%>
<%--
  index.jsp
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
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<jsp:include page="../header.jsp">
  <jsp:param name="currentPage" value="ASSIGNMENT_3"/>
</jsp:include>
<body>
<div class="row">
  <jsp:include page="../assignment3/sidebar.jsp">
    <jsp:param name="currentSubPage" value="ASSIGNMENT_3_PROBLEM_3"/>
  </jsp:include>
  <iframe
    class="container-fluid google-doc col py-3"
    src="https://docs.google.com/document/d/e/2PACX-1vSro7sR1sD8WlcatiR8FwLEip7KgtvHzRHbCivtLb5RRv2d2ojgTcu2z-azUp1hn9xelds3muY6PP6Y/pub?embedded=true"
  ></iframe>
</div>
</body>
</html>