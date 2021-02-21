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
    req.setAttribute(
      "localContext",
      getServletContext()
        .getAttribute("javax.websocket.server.ServerContainer")
    );
    getServletContext()
      .getContext("/sidecar")
      .getRequestDispatcher("/foreign-messenger")
      .include(req, resp);
    try {
      req.getRequestDispatcher("/foreign-messenger").include(req, resp);
    } catch (java.io.FileNotFoundException e) {
      req.setAttribute("foreignContextViaRequest", e);
    }
    req.getRequestDispatcher("/assignment2/Problem2.jsp").forward(req, resp);
  }
}
