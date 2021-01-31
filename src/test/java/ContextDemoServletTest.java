import org.junit.jupiter.api.AfterEach;
import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.Spy;

import javax.servlet.ServletConfig;
import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.PrintStream;

import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.when;

class ContextDemoServletTest {
  private final ByteArrayOutputStream outContent = new ByteArrayOutputStream();
  private final PrintStream originalOut = System.out;

  private ContextDemoServlet servlet;
  private ServletContext servletContext;

  @Mock
  private ServletConfig servletConfig;

  @Mock
  private HttpServletRequest request;

  @Mock
  private HttpServletResponse response;

  @BeforeEach
  void setUp() {
    MockitoAnnotations.openMocks(this);
    System.setOut(new PrintStream(outContent));
    servlet = new ContextDemoServlet();
    when(servletConfig.getServletName()).thenReturn("Testing Config");
    servlet.init(servletConfig);
  }

  @AfterEach
  void tearDown() {
    System.setOut(originalOut);
  }

  @Test
  void init() {
    assertEquals(
      "+++++++++++++++++++++++++++++++++++++++++" + "\n" +
      "Output from Testing Config" + "\n" +
      "+++++++++++++++++++++++++++++++++++++++++" + "\n",
      outContent.toString()
    );
  }

  @Test
  void service() throws ServletException, IOException {
    HttpServlet httpServlet = new ContextDemoServlet();
    httpServlet.service(request, response);
    assertTrue(outContent.toString().contains("+++++"));
  }
}