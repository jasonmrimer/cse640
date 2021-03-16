package assignment3;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.BodyContent;
import javax.servlet.jsp.tagext.BodyTagSupport;
import javax.servlet.jsp.tagext.TagSupport;
import java.io.IOException;
import java.util.Date;

public class TagWithBody extends BodyTagSupport {
  private static final long serialVersionUID = 1L;

  @Override
  public int doAfterBody() throws JspException {
    BodyContent bodyContent = super.getBodyContent();
    String bodyString = bodyContent.getString();
    JspWriter out = bodyContent.getEnclosingWriter();
    try {
      for (char c : bodyString.toCharArray()) {
        out.print("<span>");
        out.print(c);
        out.print("</span>");
      }
    } catch (IOException e) {
      throw new JspTagException("TagDateTime: " + e.getMessage());
    } // end try catch
    return SKIP_BODY;
  }
}
