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
      System.out.println(++itemNumber + ". " + type + " name: " + name);
      printValue(type, servletContext, itemNumber, name);
    }
  }

  private void printValue(String type, ServletContext servletContext, int itemNumber, String name) {
    if (type.equals("Attribute")) {
      printAttributeValue(type, servletContext, itemNumber, name);
    } else {
      printParameterValue(type, servletContext, itemNumber, name);
    }
  }

  private void printAttributeValue(String type, ServletContext servletContext, int itemNumber, String name) {
    String value = servletContext.getAttribute(name).toString();
    int length = Math.min(value.length(), 20);
    System.out.println(itemNumber + ". " + type + " value: " + value.substring(0, length));
  }

  private void printParameterValue(String type, ServletContext servletContext, int itemNumber, String name) {
    String value = servletContext.getInitParameter(name).toString();
    int length = Math.min(value.length(), 20);
    System.out.println(itemNumber + ". " + type + " value: " + value.substring(0, length));
  }

  private void printBannerWithMessage(String message) {
    printBanner();
    System.out.println(message);
    printBanner();
  }

  private void printBanner() {
    System.out.println("+++++++++++++++++++++++++++++++++++++++++");
  }
}
