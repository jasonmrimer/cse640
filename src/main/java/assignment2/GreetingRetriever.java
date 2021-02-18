package assignment2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/GreetingRetriever")
public class GreetingRetriever extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    request.getRequestDispatcher("/GreetingGenerator").include(request, response);
    request.setAttribute("greeting", request.getSession().getAttribute("greeting"));
    request.getRequestDispatcher("/assignment2/Problem3.jsp").forward(request, response);
  }
}
