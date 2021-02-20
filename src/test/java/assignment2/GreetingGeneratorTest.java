package assignment2;

import org.junit.jupiter.api.Test;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;

import static org.junit.jupiter.api.Assertions.assertTrue;
import static org.mockito.Mockito.mock;
import static org.mockito.Mockito.when;

class GreetingGeneratorTest {
  private GreetingGenerator servlet;

  @Test
  public void returnsMessageWithDate() throws ServletException, IOException {
    HttpServletRequest request = mock(HttpServletRequest.class);
    HttpServletResponse response = mock(HttpServletResponse.class);
    String expectedMessage = "Hi CSE640 2021 Class";

    StringWriter stringWriter = new StringWriter();
    PrintWriter printWriter = new PrintWriter(stringWriter);
    when(response.getWriter()).thenReturn(printWriter);

    servlet = new GreetingGenerator();
    servlet.doGet(request, response);
    String result = stringWriter.getBuffer().toString().trim();
    assertTrue(result.contains(expectedMessage));

    String dateString = result.replace(expectedMessage, "").trim();
    assertTrue(isValid(dateString), "No date found in " + dateString);
  }

  private boolean isValid(String dateStr) {
    String dateFormat = "dd-MMMM-yyyy HH:mm:ss.SSS";
    DateFormat sdf = new SimpleDateFormat(dateFormat);
    sdf.setLenient(false);
    try {
      sdf.parse(dateStr);
    } catch (ParseException e) {
      return false;
    }
    return true;
  }
}