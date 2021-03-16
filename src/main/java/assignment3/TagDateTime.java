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
            out.print("Hi CSE Class!.\n");
            out.print(now.toString());
        }
        catch (IOException e)
        {
            throw new JspTagException("TagDateTime: " + e.getMessage());
        } // end try catch
        return SKIP_BODY;
    }
}
