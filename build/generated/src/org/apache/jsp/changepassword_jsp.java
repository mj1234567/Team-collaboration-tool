package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import projbean.editmember;
import projbean.employeeFunctions;

public final class changepassword_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(6);
    _jspx_dependants.add("/functions.jsp");
    _jspx_dependants.add("/main table.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/employee header.jsp");
    _jspx_dependants.add("/client header.jsp");
    _jspx_dependants.add("/employee side menu.jsp");
  }

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

      out.write("\n");
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<link href=\"styles.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<script>\n");
      out.write("            $(document).ready(\n");
      out.write("                    function() {\n");
      out.write("                        \n");
      out.write("                     $(\"#project\").hide();\n");
      out.write("                     $(\"#team\").hide();\n");
      out.write("                     $(\"#m1\").click(\n");
      out.write("                             function()\n");
      out.write("                        {\n");
      out.write("                           $(\"#project\").fadeToggle();\n");
      out.write("                         \n");
      out.write("                          });\n");
      out.write("                          $(\"#team1\").click(\n");
      out.write("                             function()\n");
      out.write("                        {\n");
      out.write("                           $(\"#team\").fadeToggle();\n");
      out.write("                         \n");
      out.write("                          });\n");
      out.write("                         \n");
      out.write("                     \n");
      out.write("\n");
      out.write("                       \n");
      out.write("                    });\n");
      out.write("  </script>\n");
      out.write("   <script>\n");
      out.write("            function show(x)\n");
      out.write("            {\n");
      out.write("                var t = document.getElementById(x);\n");
      out.write("                t.style.visibility = \"visible\";\n");
      out.write("            }\n");
      out.write("            function hide(x)\n");
      out.write("            { var t=document.getElementById(x);\n");
      out.write("               t.style.visibility=\"hidden\"; \n");
      out.write("              }\n");
      out.write("            \n");
      out.write("        </script>");
      out.write("\n");
      out.write("</head>\n");
      out.write("<body style=\"background-image: url(imgaes/7974765422_aae428c062_b.jpg); background-repeat: repeat-x\">\n");
      out.write("    \n");
      out.write("<table width=\"100%\"  border=\"0\" align=\"center\" cellspacing=\"0\" cellpadding=\"0\" >");
      out.write("\n");
      out.write("<!--------header starts------>\n");
      out.write("  ");
 String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                
      out.write("\n");
      out.write("  \n");
      out.write(" ");
 String m1=(String)session.getAttribute("type"); 
         if(m1.equalsIgnoreCase("Admin"))
         {
  
      out.write("\n");
      out.write("      ");
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
      out.write('\n');
      out.write(' ');
 }
else if(m1.equalsIgnoreCase("Employee"))
{ 
      out.write("\n");
      out.write("         ");
      out.write("<tr>\n");
      out.write("    <td width=\"214\" height=\"30\" align=\"left\" valign=\"top\" bgcolor=\"grey\" style=\" background: rgba(112, 122, 121, 0.9);\">&nbsp;\n");
      out.write("       \n");
      out.write("    </td>\n");
      out.write("    <td width=\"1031\" valign=\"top\" bgcolor=\"grey\" style=\"background: rgba(112, 122, 121, 0.9);\"\"><span class=\"style5\">\n");
      out.write("            <a href=\"employee side.jsp\" class=\"style12\" > <img src=\"imgaes/bulding_home_house_address_homepage_page-128 copy.png\" width=\"30px\"> Home</a>\n");
      out.write("           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("            \n");
      out.write("           \n");
      out.write("          \n");
      out.write("           \n");
      out.write("           <a href=\"logout.jsp\"><img src=\"imgaes/012_power-128.png\" width=\"30px\"> </a>\n");
      out.write("    </td>\n");
      out.write("            </tr>\n");
      out.write("       \n");
      out.write("        <!----header menu ends----->\n");
      out.write("   \n");
      out.write("\n");
      out.write("\n");
      out.write("        ");
 } else { 
      out.write("\n");
      out.write("        ");
      out.write("\n");
      out.write(" <tr>\n");
      out.write("    <td width=\"214\" height=\"116\" align=\"left\" valign=\"top\" bgcolor=\"#990000\">&nbsp;\n");
      out.write("        <p><span class=\"style2\" style=\"margin-top:50px\"> &nbsp;&nbsp;</span></p>\n");
      out.write("      <p>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p></td>\n");
      out.write("    <td width=\"1031\" valign=\"top\" bgcolor=\"#990000\"><span class=\"style5\"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;");
 String m=(String)session.getAttribute("type"); 
      out.print(m);
      out.write("&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;<a href=\"changepassword.jsp\" class=\"links\">Change password&nbsp;&nbsp;</a><a href=\"logout.jsp\" class=\"links\"> logout</a></span><a href=\"logout.jsp\"><img src=\"imgaes/Logout-128 copy.png\" width=\"30\" height=\"25\" align=\"absmiddle\" border=\"none\"> </a> \n");
      out.write("      <table width=\"200\" border=\"0\" style=\"position:absolute; left: 318px; top: 102px; width: 946px;\">\n");
      out.write("<tr>\n");
      out.write("            <td width=\"229\">&nbsp;</td>\n");
      out.write("          <td width=\"229\">&nbsp;</td>\n");
      out.write("          <td width=\"282\">&nbsp;;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>\n");
      out.write("      <td width=\"178\">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;\n");
      out.write("    \n");
      out.write("             \n");
      out.write("        </tr>\n");
      out.write("      </table>\n");
      out.write("      <!----header menu ends----->\n");
      out.write("    </td>\n");
      out.write("  </tr>\n");
      out.write(" ");
      out.write("\n");
      out.write("        ");
 } 
      out.write("\n");
      out.write("  <!-------header ends---->\n");
      out.write("  <tr>\n");
      out.write("    <!------side menu starts------>\n");
      out.write("   \n");
      out.write("    ");
      out.write("\n");
      out.write("<!----side menu starts---->\n");
      out.write("<td height=\"414\" valign=\"top\"><table width=\"100%\" height=\"650\" border=\"0\" bgcolor=\"grey\" style=\"background: rgba(112, 122, 121, 0.9);\">\n");
      out.write("         <td align=\"center\">\n");
      out.write("                <a href=\"changepassword.jsp\" class=\"links\" style=\"font-size: 36px\">\n");
      out.write("                     ");
  employeeFunctions e1=new employeeFunctions();
                     String id1=(String)session.getAttribute("id");
                    e1.setId(id1);
                    e1.showimage();
                    String image=e1.getImage();
                      
                       
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                       <img src=\"files/");
      out.print(image);
      out.write("\" width=\"150px\"></a>\n");
      out.write("                       \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("            </td>\n");
      out.write("      <tr>\n");
      out.write("          <td class=\"a\" width=\"204\" height=\"50\" >&nbsp;&nbsp; <img src=\"imgaes/Untitled11 copy.png\" width=\"48\" height=\"45\" align=\"absmiddle\" /> &nbsp;&nbsp;&nbsp;<span class=\"style9\">&nbsp;<span class=\"style8\"><a href=\"employee side.jsp\" class=\"style12 \">Home</a>&nbsp;</span></span></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"a\" height=\"50\" > &nbsp;&nbsp;&nbsp;&nbsp;<img src=\"imgaes/calendar-9-xl copy.png\" width=\"37\" height=\"32\" align=\"absmiddle\" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href=\"message.jsp\" class=\"style12 \">&nbsp;Messages</span></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <td class=\"a\" height=\"50\">&nbsp;&nbsp;&nbsp;<img src=\"imgaes/configuration_computer_service_it_programming_hardware_webdesign-128 copy.png\" width=\"51\" height=\"47\" align=\"absmiddle\" />&nbsp;&nbsp;&nbsp;&nbsp; \n");
      out.write("              <a href=\"myprojects.jsp\" id='m1' class=\"style12\">Project</a>\n");
      out.write("             \n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </td>\n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("      <tr>\n");
      out.write("          <td class=\"a\" height=\"50\">&nbsp;&nbsp;<img src=\"imgaes/team-icon copy.png\" width=\"54\" height=\"44\" align=\"absmiddle\" />&nbsp;&nbsp;&nbsp;<a href=\"showprojectteam_1.jsp\" class=\"style12 \">&nbsp;Team</a></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <td class=\"a\" height=\"50\">&nbsp;&nbsp;<img src=\"imgaes/SEO_Monitoring-128 copy.png\" width=\"49\" height=\"39\" align=\"absmiddle\" />&nbsp;&nbsp;<a href=\"showprojectreport_1.jsp\" class=\"style12 \">&nbsp;&nbsp;&nbsp;Reports</a></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"a\" height=\"50\">&nbsp;&nbsp;<img src=\"imgaes/seo-performance-2-xl copy.png\" width=\"52\" height=\"38\" align=\"absmiddle\" />&nbsp;&nbsp;&nbsp;<a href=\"performance.jsp\" class=\"style12 \">&nbsp;Performance</a></td>\n");
      out.write("      </tr>\n");
      out.write("    </table> </td>\n");
      out.write("    <!------side menu ends---->");
      out.write("\n");
      out.write("    <!------side menu ends---->\n");
      out.write("   \n");
      out.write("    <!-------mid section starts------>\n");
      out.write("     <td valign=\"middle\" bgcolor=\"#eee\" align=\"center\">\n");
      out.write("                     <div style=\"display: block; height: 800px; position: relative;z-index: 1;\">\n");
      out.write("                         <div style=\"background-image: url(imgaes/brown-mountains-wallpaper.jpg);\" class=\"blur-back\"></div>\n");
      out.write("                          <div>\n");
      out.write("                               <span class=\"fonts\" style=\"color:black; font-size: 36px; font-style: arial\">Change Password</span>\n");
      out.write("                         </div><br>\n");
      out.write("        <form action=\"changepassword1.jsp\" method=\"post\">\n");
      out.write("        <p class=\"style14\">current password\n");
      out.write("          <input type=\"text\" name=\"current\" >\n");
      out.write("        </p>\n");
      out.write("        <p class=\"style14\">  new password\n");
      out.write("           &nbsp; &nbsp; <input type=\"text\" name=\"new\" >\n");
      out.write("        </p>\n");
      out.write("        &nbsp; &nbsp; <input type=\"submit\" value=\"change\">\n");
      out.write("        </form>\n");
      out.write("    \n");
      out.write("        \n");
      out.write("</td>\n");
      out.write("    <!------mid section ends------>\n");
      out.write("  </tr>\n");
      out.write("  <tr>\n");
      out.write("    <td height=\"30\">&nbsp;</td>\n");
      out.write("    <td>&nbsp;</td>\n");
      out.write("  </tr>\n");
      out.write("</table>\n");
      out.write("</body>\n");
      out.write("</html>\n");
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
