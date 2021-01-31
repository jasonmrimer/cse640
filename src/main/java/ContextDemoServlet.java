import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.Enumeration;

@WebServlet(urlPatterns = "/ContextDemoServlet")
public class ContextDemoServlet extends HttpServlet {
  ServletConfig servletConfig;

  @Override
  public void init(ServletConfig config) throws ServletException {
    servletConfig = config;
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println("Output from " + config.getServletName());
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
  }

  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    ServletContext servletContext = servletConfig.getServletContext();
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println("Getting Attributes");
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    Enumeration<String> attributes = servletContext.getAttributeNames();
    while (attributes.hasMoreElements()) {
      String attribute = attributes.nextElement();
      System.out.println("Attribute name: " + attribute);
    }

    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println("Getting Attributes");
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    Enumeration<String> parameters = servletContext.getInitParameterNames();
    while (parameters.hasMoreElements()) {
      String parameter = parameters.nextElement();
      System.out.println("Parameter name: " + parameter);
    }
  }
}
