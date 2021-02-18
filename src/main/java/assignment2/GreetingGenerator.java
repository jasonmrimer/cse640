package assignment2;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.text.SimpleDateFormat;

@WebServlet("/GreetingGenerator")
public class GreetingGenerator extends HttpServlet {
  @Override
  protected void doGet(HttpServletRequest request, HttpServletResponse response) {
    SimpleDateFormat format = new SimpleDateFormat("dd-MMMM-yyyy HH:mm:ss.SSS");
    String greeting = "Hi CSE640 2021 Class " + format.format(System.currentTimeMillis());
    request.getSession().setAttribute("greeting", greeting);
  }
}
