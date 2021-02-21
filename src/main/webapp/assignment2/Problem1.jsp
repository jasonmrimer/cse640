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
    <jsp:param name="currentSubPage" value="ASSIGNMENT_2_PROBLEM_1"/>
  </jsp:include>
  <div class="container-fluid col py-3">
    <h1>Defining Request Dispatcher</h1>
    <div class="answer">
      <span class="paragraph">
        &emsp;A Request Dispatcher is a resource fetcher and control delegator for Java Servlets. It takes the path of a
      resource and then wraps in several methods & checkers to send execution control to that resource. The fetchable
      resources are servlets, JSP pages, and HTML files. First, the dispatcher will attempt to find the resources,
      triggering an IOException if unfound or inaccessible as well as a ServletException if it cannot interact with the
      resource as intended. Upon successful connection, the RequestDispatcher will relinquish the server’s execution
      control to the resource, passing the ServletRequest and ServletResponse. It can be used in different scopes (see
      Problem 2: ServletContext vs ServletResponse) and its interface offers two methods*:
      </span>

      <span class="bullet">&emsp;&emsp;- <b><i>forward</i></b> which completely relinquishes control with no return and</span>
      <span class="bullet">&emsp;&emsp;- <b><i>include</i></b> which merely lends control and takes it back upon delegation completion.</span>
      *See Problem 4: Forward vs Include

      <span class="paragraph">
      &emsp;Ultimately, the Request Dispatcher enables the chaining of many servlets on a server both internal and external to
      an app. This aids the separation of responsibility and the more effective use of network resources. For example, a
      login servlet can facilitate authentication and dispatch either a successful/logged-in home page or a failure
      response to offer a “forgot my password” page. A servlet with a heavy analytical component can keep the light
      weight traffic control on one set of cloud resources while it dispatches the hard work to a more capable portion
      of the network, encapsulating and presenting the response back to the user upon completion.
      </span>

    </div>
  </div>
</div>
</body>
</html>
<style type="text/css">
    .answer {
        display: flex;
        flex-direction: column;
    }

    .bullet {
        margin-left: 8px;
    }

    .paragraph {
        margin-top: 16px;
    }
</style>