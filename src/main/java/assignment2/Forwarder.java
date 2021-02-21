package assignment2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Forwarder")
public class Forwarder extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    System.out.println("============forwarder");
    req.setAttribute("setupFromForward", "Knock knock...");
    req.getRequestDispatcher("/assignment2/Problem4.jsp").forward(req, resp);
    req.setAttribute("punchlineFromForward", "Who's there?");
  }
}
