package assignment2;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/ControllerA2P2")
public class ControllerProblem2 extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

  //  request dispatch within web app
//  request dispatch external via servletcontext (works)
//  request dispatch external via servletre quest (fails
    req.getRequestDispatcher("/assignment2/Problem2.jsp").forward(req, resp);
  }
}
