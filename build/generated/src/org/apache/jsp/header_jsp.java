package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("<tr>\n");
      out.write("    <td width=\"214\" height=\"30\" align=\"left\" valign=\"top\" style=\"background-color: grey; background: rgba(112, 122, 121, 0.9);\">&nbsp;\n");
      out.write("\n");
      out.write("    </td>\n");
      out.write("    <td width=\"1031\" valign=\"top\" style=\"background-color: grey; background: rgba(112, 122, 121, 0.9);\"><span class=\"style5\">\n");
      out.write("            <a href=\"admine side.jsp\" class=\"style12\" > <img src=\"imgaes/bulding_home_house_address_homepage_page-128 copy.png\" width=\"30px\"> Home</a>\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("\n");
      out.write("\n");
      out.write("            <a href=\"addclient.jsp\"  class=\"style12\"><img src=\"imgaes/user-add-man-128 copy.png\" width=\"40\" style=\"align:absolute middle\"> Add client</a>&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <span class=\"style13\">&nbsp;<a href=\"javascript:show('editmember')\"    class=\"style12\"><img src=\"imgaes/edit copy.png\" width=\"40\" style=\"align:absolute middle\" >Edit Member</a></span>\n");
      out.write("\n");
      out.write("            <table width=\"123\" border=\"1\" id=\"editmember\" class=\"editmember\" cellspacing=\"0\" onMouseOver=\"show('editmember')\" onMouseOut=\"hide('editmember')\" bgcolor=\"#3d3f40\" style=\"border-radius: 5px\">\n");
      out.write("\n");
      out.write("\n");
      out.write("               \n");
      out.write("                 <tr>\n");
      out.write("\n");
      out.write("                    <td onmouseover=\"show('editmember')\"><a href=\"show.jsp\" class=\"style12\">Show all</a></td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("                 <tr>\n");
      out.write("\n");
      out.write("                    <td width=\"113\" onmouseover=\"show('editmember')\"><a href=\"addmember.jsp\" class=\"style12\">Add Member</a></td>\n");
      out.write("\n");
      out.write("                </tr>\n");
      out.write("\n");
      out.write("            </table>\n");
      out.write("\n");
      out.write("\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            <a href=\"logout.jsp\"><img src=\"imgaes/012_power-128.png\" width=\"30px\"> </a> \n");
      out.write("\n");
      out.write("        </span></td>\n");
      out.write("</tr>\n");
      out.write("\n");
      out.write("<!----header menu ends----->\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
