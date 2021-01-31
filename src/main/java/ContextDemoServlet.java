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
    stepThroughCollectionAndPrintWithBanner(
      "Attribute",
      servletContext,
      servletContext.getAttributeNames()
    );

    stepThroughCollectionAndPrintWithBanner(
      "Parameter",
      servletContext,
      servletContext.getInitParameterNames()
    );
  }

  private void stepThroughCollectionAndPrintWithBanner(
    String type,
    ServletContext servletContext,
    Enumeration<String> collection
  ) {
    printBannerWithMessage("Getting " + type + "s");
    stepThroughCollectionAndPrint(type, servletContext, collection);
  }

  private void stepThroughCollectionAndPrint(String type, ServletContext servletContext, Enumeration<String> names) {
    int itemNumber = 0;
    while (names.hasMoreElements()) {
      String name = names.nextElement();
      System.out.println(++itemNumber + ". " + type + " name:  " + name);
      printAttributeOrParameter(type, servletContext, itemNumber, name);
    }
  }

  private void printAttributeOrParameter(String type, ServletContext servletContext, int itemNumber, String name) {
    if (type.equals("Attribute")) {
      printValue(itemNumber, type, servletContext.getAttribute(name).toString());
    } else {
      printValue(itemNumber, type, servletContext.getInitParameter(name));
    }
  }

  private void printValue(int itemNumber, String type, String value) {
    System.out.println(itemNumber + ". " + type + " value: " + trimValue(value));
  }

  private String trimValue(String value) {
    return value.length() > 30 ? value.substring(0, 27) + "..." : value;
  }

  private void printBannerWithMessage(String message) {
    System.out.println();
    printBanner();
    System.out.println(message);
    printBanner();
  }

  private void printBanner() {
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
  }
}
