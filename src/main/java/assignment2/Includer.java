package assignment2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Includer")
public class Includer extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    req.getRequestDispatcher("/IncludingSetup").include(req, resp);
    req.getRequestDispatcher("/IncludingPunchline").include(req, resp);
    req.getRequestDispatcher("/assignment2/Problem4.jsp").forward(req, resp);
  }
}