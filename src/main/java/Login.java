import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/Login")
public class Login extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    response.setContentType("text/html");
//    PrintWriter out = response.getWriter();
//    out.println("<h1>shalon</h1>");
//    out.flush();

    String url = "/Greeting.jsp";
    System.out.println("======here");
    String user = request.getParameter("user");
    if (user == null || user.length() == 0) {
      url = "/LoginPage.jsp";
      request.setAttribute("error", "User name must NOT be empty");
    }
    ServletContext context = getServletContext();
    RequestDispatcher dispatcher = context.getRequestDispatcher(url);
    dispatcher.forward(request, response);
  }
//
//  @Override
//  protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
//    doGet(request, response);
//  }
}
