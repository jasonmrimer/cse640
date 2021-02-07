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
<jsp:include page="header.jsp">
  <jsp:param name="currentPage" value="HOME"/>
</jsp:include>
<body>
<iframe
  class="container-fluid google-doc"
  src="https://docs.google.com/document/d/e/2PACX-1vRjd4Et3t-q71LuL3GigkpN5WaV5Jt5K9okZLxD_Kt2YEf6kEaOMNzt9GYN1-r9eC-FSQWEP_CikFnD/pub?embedded=true"
></iframe>
</body>
<style type="text/css">
    .google-doc {
        height: 100%;
    }
</style>
</html>