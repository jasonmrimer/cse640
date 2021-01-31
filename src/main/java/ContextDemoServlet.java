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
      servletContext.getAttributeNames()
    );

    stepThroughStringAndPrintWithBanner(
      "Parameter",
      servletContext.getInitParameterNames()
    );
  }

  private void stepThroughStringAndPrintWithBanner(String type, Enumeration<String> strings) {
    printBannerWithMessage("Getting " + type + "s");
    stepThroughStringsAndPrint(strings, type);
  }

  private void stepThroughStringsAndPrint(Enumeration<String> strings, String label) {
    while (strings.hasMoreElements()) {
      String str = strings.nextElement();
      System.out.println(label + " name: " + str);
    }
  }

  private void printBannerWithMessage(String message) {
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
    System.out.println(message);
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
  }
}
