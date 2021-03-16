package assignment3;

import java.io.IOException;
import java.util.Date;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.JspTagException;
import javax.servlet.jsp.JspWriter;
import javax.servlet.jsp.tagext.TagSupport;

public class TagDateTime extends TagSupport {

	private static final long serialVersionUID = 1L;

    public int doStartTag() throws JspException
    {
        JspWriter out = pageContext.getOut();
        Date now = new Date();
        try
        {
            out.print("<div style=\"" +
              "font-family: Helvetica; " +
              "color: red;" +
              "font-weight: bold;\"" +
              ">");
            out.print(now.toString());
            out.print("</div>");
        }
        catch (IOException e)
        {
            throw new JspTagException("TagDateTime: " + e.getMessage());
        } // end try catch
        return SKIP_BODY;
    }
}
