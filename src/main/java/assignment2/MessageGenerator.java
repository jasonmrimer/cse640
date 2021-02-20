package assignment2;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.text.SimpleDateFormat;

@WebServlet("/MessageGenerator")
public class MessageGenerator extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {
    SimpleDateFormat format = new SimpleDateFormat("dd-MMMM-yyyy HH:mm:ss.SSS");
    resp.getWriter().append("Hi CSE640 2021 Class " + format.format(System.currentTimeMillis()));
  }
}
