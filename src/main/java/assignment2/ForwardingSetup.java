package assignment2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ForwardingSetup")
public class ForwardingSetup extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.setAttribute("setupFromForward", "Knock knock...");
    System.out.println("-----------forward setup");
//    PrintWriter out = response.getWriter();
//
//    out.println("Hello from AnotherServlet");
    response.setContentType("text/html");
    response.sendRedirect("/assignment2/Problem4.jsp");
//    request.getRequestDispatcher("/assignment2/Problem4.jsp").forward(request, response);
  }
}
