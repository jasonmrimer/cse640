import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.*;

@WebServlet(urlPatterns = "/ContextDemoServlet")
public class ContextDemoServlet extends HttpServlet {
  private final String banner = "+++++++++++++++++++++++++++++++++++++++++";
  ServletConfig servletConfig;

  @Override
  public void init(ServletConfig config) {
    servletConfig = config;
    print(bannerWithMessage("Output from " + config.getServletName()));
  }

  private void print(LinkedList<String> multiLineMessage) {
    for (String line : multiLineMessage) {
      System.out.println(line);
    }
  }

  @Override
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    ServletContext servletContext = servletConfig.getServletContext();

    LinkedHashMap<String, String> attributes = convertCollectIntoMap(
      "Attribute",
      servletContext,
      servletContext.getAttributeNames()
    );

    LinkedHashMap<String, String> parameters = convertCollectIntoMap(
      "Parameter",
      servletContext,
      servletContext.getInitParameterNames()
    );

    LinkedList<String> printableAttributes = convertCollectIntoPrintableList(
      "Attribute",
      servletContext,
      servletContext.getAttributeNames()
    );

    print(bannerWithMessage("Attributes"));
    print(printableAttributes);

    LinkedList<String> printableParameters = convertCollectIntoPrintableList(
      "Parameter",
      servletContext,
      servletContext.getInitParameterNames()
    );

    print(bannerWithMessage("Parameters"));
    print(printableParameters);

    request.setAttribute("attributes", attributes);
    request.setAttribute("parameters", parameters);
    request.setAttribute("printableAttributes", printableAttributes);
    request.setAttribute("printableParameters", printableParameters);
    request.getRequestDispatcher("/Assignment1Problem4.jsp").forward(request,response);
  }

  private LinkedHashMap<String, String> convertCollectIntoMap(String type, ServletContext servletContext, Enumeration<String> names) {
    LinkedHashMap<String, String> collection = new LinkedHashMap<>();
    while (names.hasMoreElements()) {
      String name = names.nextElement();
      collection.put(name, trimValue(valueOfAttributeOrParameter(type, servletContext, name)));
    }
    return collection;
  }

  private String valueOfAttributeOrParameter(String type, ServletContext servletContext, String name) {
    if (type.equals("Attribute")) {
      return servletContext.getAttribute(name).toString();
    } else {
      return servletContext.getInitParameter(name);
    }
  }

  private LinkedList<String> convertCollectIntoPrintableList(String type, ServletContext servletContext, Enumeration<String> names) {
    LinkedList<String> printableCollection = new LinkedList<String>();
    int itemNumber = 0;
    while (names.hasMoreElements()) {
      String name = names.nextElement();
      printableCollection.add(++itemNumber + ". " + type + " name:  " + name);
      printableCollection.add(printableAttributeOrParameter(type, servletContext, itemNumber, name));
    }
    return printableCollection;
  }

  private String printableAttributeOrParameter(String type, ServletContext servletContext, int itemNumber, String name) {
    if (type.equals("Attribute")) {
      return printableValue(itemNumber, type, servletContext.getAttribute(name).toString());
    } else {
      return printableValue(itemNumber, type, servletContext.getInitParameter(name));
    }
  }

  private String printableValue(int itemNumber, String type, String value) {
    return (itemNumber + ". " + type + " value: " + trimValue(value));
  }

  private String trimValue(String value) {
    return value.length() > 30 ? value.substring(0, 27) + "..." : value;
  }

  private LinkedList<String> bannerWithMessage(String message) {
    LinkedList<String> bannerWithMessage = new LinkedList<String>();
    bannerWithMessage.add(banner);
    bannerWithMessage.add(message);
    bannerWithMessage.add(banner);
    return bannerWithMessage;
  }
}
