import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.Enumeration;

@WebServlet(urlPatterns = "/ContextDemoServlet")
public class ContextDemoServlet extends HttpServlet {
  ServletConfig servletConfig;

  @Override
  public void init(ServletConfig config) {
    servletConfig = config;
    printBannerWithMessage("Output from " + config.getServletName());
  }

  @Override
  protected void service(HttpServletRequest req, HttpServletResponse resp) {
    ServletContext servletContext = servletConfig.getServletContext();
    stepThroughStringAndPrintWithBanner(
      "Attribute",
      servletContext, servletContext.getAttributeNames()
    );

    stepThroughStringAndPrintWithBanner(
      "Parameter",
      servletContext, servletContext.getInitParameterNames()
    );
  }

  private void stepThroughStringAndPrintWithBanner(
    String type,
    ServletContext servletContext,
    Enumeration<String> strings
  ) {
    printBannerWithMessage("Getting " + type + "s");
    stepThroughStringsAndPrint(type, servletContext, strings);
  }

  private void stepThroughStringsAndPrint(String type, ServletContext servletContext, Enumeration<String> names) {
    while (names.hasMoreElements()) {
      String name = names.nextElement();
      System.out.println(type + " name: " + name);
      if (type.equals("Attribute")) {
        System.out.println(type + " value: " + servletContext.getAttribute(name));
      } else {
        System.out.println(type + " value: " + servletContext.getInitParameter(name));
      }
    }
  }

  private void printBannerWithMessage(String message) {
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println(message);
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
  }
}
