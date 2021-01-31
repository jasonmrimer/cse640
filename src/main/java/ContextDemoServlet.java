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
    printBannerWithMessage("Output from " + config.getServletName());
  }

  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
    ServletContext servletContext = servletConfig.getServletContext();
    printBannerWithMessage("Getting Attributes");
    stepThroughStringsAndPrint(
      servletContext.getAttributeNames(),
      "Attribute name: "
    );

    printBannerWithMessage("Getting Parameters");
    stepThroughStringsAndPrint(
      servletContext.getInitParameterNames(),
      "Parameter name: "
    );
  }

  private void stepThroughStringsAndPrint(Enumeration<String> strings, String message) {
    while (strings.hasMoreElements()) {
      String str = strings.nextElement();
      System.out.println(message + str);
    }
  }

  private void printBannerWithMessage(String message) {
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println(message);
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
  }
}
