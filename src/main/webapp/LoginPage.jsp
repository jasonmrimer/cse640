<%--
  Created by IntelliJ IDEA.
  User: engineer
  Date: 1/15/21
  Time: 9:52 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
<%
    String error_message = "";
    Object error = request.getAttribute("error");
    if (error != null)
        error_message = error.toString();
%>
<form action="Login">
    <table Style="border-collapse: separate; border-spacing: 4px;">
        <tr>
            <td>12Enter your user name:</td>
            <td><input name="user" type="text" size="20"></td>
            <td style="color: red"><%=error_message%></td>
        </tr>
        <tr>
            <td></td>
            <td><input type="submit" value="Login"></td>
            <td></td>
        </tr>
    </table>
</form>
</body>
</html>
