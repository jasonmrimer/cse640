import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebInitParam;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;

@WebServlet(
  urlPatterns = "/ConfigDemoServlet",
  initParams = {
    @WebInitParam(name = "firstName", value = "Jason"),
    @WebInitParam(name = "lastName", value = "Rimer")
  }
)
public class ConfigDemoServlet extends HttpServlet {
  ServletConfig servletConfig;

  public void init(ServletConfig config) {
    servletConfig = config;
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println("Output from " + config.getServletName());
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
  }

  protected void service(HttpServletRequest request, HttpServletResponse response) {
    ServletContext servletContext = servletConfig.getServletContext();
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println("Getting Attributes");
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    Enumeration<String> attributes = servletContext.getAttributeNames();
    while (attributes.hasMoreElements()) {
      String attribute = attributes.nextElement();
      if (attribute.equals("password")) {
        System.out.println("Attribute name: " + attribute);
        System.out.println("Attribute value: " + servletContext.getAttribute(attribute));
      }
    }
  }
}
