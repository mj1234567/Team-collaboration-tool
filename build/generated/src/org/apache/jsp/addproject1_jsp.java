package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.jar.Attributes.Name;
import projbean.project;

public final class addproject1_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  static {
    _jspx_dependants = new java.util.ArrayList<String>(4);
    _jspx_dependants.add("/functions.jsp");
    _jspx_dependants.add("/main table.jsp");
    _jspx_dependants.add("/header.jsp");
    _jspx_dependants.add("/side menu.jsp");
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
      out.write("\n");
      out.write("<html>\n");
      out.write("<head>\n");
      out.write("<meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("<title>Untitled Document</title>\n");
      out.write("<link href=\"styles.css\" rel=\"stylesheet\" type=\"text/css\">\n");
      out.write("<script src=\"jquery-1.12.3.min.js\"></script>\n");
      out.write("        <script src=\"jquery.validate.js\"></script>\n");
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
      out.write(" <!--------header starts------>\n");
      out.write("  ");
 String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                
      out.write("\n");
      out.write("                \n");
      out.write(" \n");
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
      out.write("\n");
      out.write(" \n");
      out.write("  <!-------header ends---->\n");
      out.write("  <tr>\n");
      out.write("    <!------side menu starts------>\n");
      out.write("    ");
      out.write("<!----side menu starts---->\n");
      out.write("<td height=\"414px\" valign=\"top\"><table width=\"100%\" height=\"650px\" border=\"0\" style=\"background-color: grey; background: rgba(112, 122, 121, 0.9);\" id=\"sidetable\">\n");
      out.write("        <tr>\n");
      out.write("            <th align=\"center\">\n");
      out.write("                <a href=\"changepasswordadmin.jsp\" class=\"links\" style=\"font-size: 36px\"><img src=\"imgaes/post1.png\"></a>\n");
      out.write("            </th>\n");
      out.write("            \n");
      out.write("        </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"a\" width=\"204\" height=\"50\" >&nbsp;&nbsp; <img src=\"imgaes/Untitled11 copy.png\" width=\"48\" height=\"45\" align=\"absmiddle\" /> &nbsp;&nbsp;&nbsp;<span class=\"style9\">&nbsp;<span class=\"style8\"><a href=\"admine side.jsp\" class=\"style12 \">Home</a>&nbsp;</span></span></td>\n");
      out.write("      </tr>\n");
      out.write("      \n");
      out.write("      <tr>\n");
      out.write("          <td class=\"a\" height=\"50\">&nbsp;&nbsp;&nbsp;<img src=\"imgaes/configuration_computer_service_it_programming_hardware_webdesign-128 copy.png\" width=\"51\" height=\"47\" align=\"absmiddle\" />&nbsp;&nbsp;&nbsp;&nbsp; \n");
      out.write("              <a id='m1' class=\"style12 \">Project</a>\n");
      out.write("              <table border='0'  id='project' bgcolor='black' style='border-radius: 5px; margin-left: 50px; left:115px; top:440px; position: absolute' width=\"150px\">\n");
      out.write("                  <tr><td align=\"center\" style=\"border-bottom: 2px #fff solid\"><a href=\"addproject.jsp\" class=\"style12\">Add project</a></td></tr>\n");
      out.write("                  <tr><td align=\"center\" style=\"border-bottom: 2px #fff solid\"><a href=\"showprojects.jsp\" class=\"style12 \">Show project</a></td></tr>\n");
      out.write("              </table>\n");
      out.write("        \n");
      out.write("        \n");
      out.write("        </td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"a\" height=\"50\">&nbsp;&nbsp;<img src=\"imgaes/thin-0491_box_shipping_modules-128 copy.png\" width=\"61\" height=\"41\" align=\"absmiddle\" />&nbsp; <a href=\"showprojectmodules.jsp\" class=\"style12 \">&nbsp;Modules</a></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("          <td class=\"a\" height=\"50\">&nbsp;&nbsp;<img src=\"imgaes/team-icon copy.png\" width=\"54\" height=\"44\" align=\"absmiddle\" />&nbsp;&nbsp;&nbsp;\n");
      out.write("              <a id=\"team1\" class=\"style12\">&nbsp;Team</a>\n");
      out.write("               <table border='0'  id='team' bgcolor='black' style='border-radius: 5px; margin-left: 50px; left:115px; top:540px; position: absolute' width=\"150px\">\n");
      out.write("                  <tr><td align=\"center\" style=\"border-bottom: 2px #fff solid\"><a href=\"addteam.jsp\" class=\"style12\">Add Team</a></td></tr>\n");
      out.write("                  <tr><td align=\"center\" style=\"border-bottom: 2px #fff solid\"><a href=\"showprojectteam.jsp\" class=\"style12 \">Show Team</a></td></tr>\n");
      out.write("              </table>\n");
      out.write("          </td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"a\" height=\"50\">&nbsp;&nbsp;<img src=\"imgaes/SEO_Monitoring-128 copy.png\" width=\"49\" height=\"39\" align=\"absmiddle\" />&nbsp;&nbsp;<a href=\"showprojectreport.jsp\" class=\"style12 \">&nbsp;&nbsp;&nbsp;Reports</a></td>\n");
      out.write("      </tr>\n");
      out.write("      <tr>\n");
      out.write("        <td class=\"a\" height=\"50\">&nbsp;&nbsp;<img src=\"imgaes/seo-performance-2-xl copy.png\" width=\"52\" height=\"38\" align=\"absmiddle\" />&nbsp;&nbsp;&nbsp;<a href=\"per2.jsp\" class=\"style12 \">&nbsp;Performance</a></td>\n");
      out.write("      </tr>\n");
      out.write("    </table> </td>\n");
      out.write("    <!------side menu ends---->");
      out.write("\n");
      out.write("    <!------side menu ends---->\n");
      out.write("    <!-------mid section starts------>\n");
      out.write("   <td valign=\"middle\" bgcolor=\"#eee\" align=\"center\">\n");
      out.write("                     <div style=\"display: block; height: 800px; position: relative;z-index: 1;\">\n");
      out.write("                         <div style=\"background-image: url(imgaes/brown-mountains-wallpaper.jpg);\" class=\"blur-back\"></div>\n");
      out.write("                          <div>\n");
      out.write("                               <span class=\"fonts\" style=\"color:black; font-size: 36px; font-style: arial\"></span>\n");
      out.write("                         </div><br>\n");
      out.write("        ");

        String name=request.getParameter("name");
        String id=request.getParameter("project id");
        String type1 =request.getParameter("type of project");
        String client=request.getParameter("name_of_client");
        String description=request.getParameter("description");
         String start=request.getParameter("starting date");
          String deadline=request.getParameter("deadline");
       
        project x= new project();
         x.setName(name);
         x.setType(type1);
         x.setDescription(description);
         x.setId(id);
         x.setDeadline(deadline);
         x.setStart(start);
        
         x.setClient(client);
        boolean b=x.search();
        if(b)
{ 
      out.write(" <span style=\"font-size: 24px; font-family: cursive \">project already exist </span>\n");
      out.write("        ");
}else
        {
       int a= x.save();
       
      out.write("\n");
      out.write("       \n");
      out.write("       <span style=\"font-size: 24px; font-family: cursive \"> ");
      out.print(a);
      out.write(" project added </span>\n");
      out.write("       ");
  }
                
      out.write("\n");
      out.write("    </td>\n");
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
