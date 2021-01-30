import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet("/Reverser")
public class Reverser extends HttpServlet {
  protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    String url = "/Assignment1Problem2OutputForm.jsp";
    String text = request.getParameter("text");
    String reversedText = new StringBuilder(text).reverse().toString();
    ServletContext context = getServletContext();
    request.setAttribute("textToDisplay", reversedText);
    RequestDispatcher dispatcher = context.getRequestDispatcher(url);
    dispatcher.forward(request, response);
  }
}
