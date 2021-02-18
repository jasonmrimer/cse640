package assignment1;

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
  ServletConfig servletConfig;
  ServletContext servletContext;

  @Override
  public void init(ServletConfig config) {
    servletConfig = config;
    print(bannerWithMessage("Output from " + config.getServletName()));
  }

  @Override
  protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    servletContext = servletConfig.getServletContext();

    LinkedHashMap<String, String> attributes = extractContext("Attribute", servletContext.getAttributeNames());
    LinkedHashMap<String, String> parameters = extractContext("Parameter", servletContext.getInitParameterNames());

    print(bannerWithMessage("Attributes"));
    print(convertMapToPrintableList("Attributes", attributes));

    print(bannerWithMessage("Parameters"));
    print(convertMapToPrintableList("Parameters", parameters));

    request.setAttribute("attributes", attributes);
    request.setAttribute("parameters", parameters);
    request.getRequestDispatcher("/assignment1/Problem4.jsp").forward(request, response);
  }

  private LinkedHashMap<String, String> extractContext(String type, Enumeration<String> names) {
    LinkedHashMap<String, String> collection = new LinkedHashMap<>();
    while (names.hasMoreElements()) {
      String name = names.nextElement();
      collection.put(name, valueOfAttributeOrParameter(type, this.servletContext, name));
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

  private LinkedList<String> convertMapToPrintableList(String type, LinkedHashMap<String, String> collection) {
    LinkedList<String> printableCollection = new LinkedList<>();
    int itemNumber = 0;
    for (Map.Entry<String, String> item : collection.entrySet()) {
      printableCollection.add(++itemNumber + ". " + type + " name:  " + item.getKey());
      printableCollection.add(itemNumber + ". " + type + " value:  " + item.getValue());
    }
    return printableCollection;
  }

  private String truncate(String value) {
    return value.length() > 60 ? value.substring(0, 57) + "..." : value;
  }

  private LinkedList<String> bannerWithMessage(String message) {
    LinkedList<String> bannerWithMessage = new LinkedList<>();
    String banner = "+++++++++++++++++++++++++++++++++++++++++";
    bannerWithMessage.add(banner);
    bannerWithMessage.add(message);
    bannerWithMessage.add(banner);
    return bannerWithMessage;
  }

  private void print(LinkedList<String> multiLineMessage) {
    for (String line : multiLineMessage) {
      System.out.println(truncate(line));
    }
  }
}
