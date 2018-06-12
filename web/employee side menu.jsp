<%@page import="projbean.employeeFunctions"%>
<!----side menu starts---->
<td height="414" valign="top"><table width="100%" height="650" border="0" bgcolor="grey" style="background: rgba(112, 122, 121, 0.9);">
         <td align="center">
                <a href="changepassword.jsp" class="links" style="font-size: 36px">
                     <%  employeeFunctions e1=new employeeFunctions();
                     String id1=(String)session.getAttribute("id");
                    e1.setId(id1);
                    e1.showimage();
                    String image=e1.getImage();
                      String myname=e1.getName();
                       
                        %>
                        <span style="font-size: 18px; font-family: inherit; color:white"><%=myname%></span><br><br>
                       <img src="files/<%=image%>" width="150px"></a>
                       
                    
                    
            </td>
      <tr>
          <td class="a" width="204" height="50" >&nbsp;&nbsp; <img src="imgaes/Untitled11 copy.png" width="48" height="45" align="absmiddle" /> &nbsp;&nbsp;&nbsp;<span class="style9">&nbsp;<span class="style8"><a href="employee side.jsp" class="style12 ">Home</a>&nbsp;</span></span></td>
      </tr>
      
      <tr>
        <td class="a" height="50" > &nbsp;&nbsp;&nbsp;&nbsp;<img src="imgaes/calendar-9-xl copy.png" width="37" height="32" align="absmiddle" />&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <a href="message.jsp" class="style12 ">&nbsp;Messages</span></td>
      </tr>
      <tr>
          <td class="a" height="50">&nbsp;&nbsp;&nbsp;<img src="imgaes/configuration_computer_service_it_programming_hardware_webdesign-128 copy.png" width="51" height="47" align="absmiddle" />&nbsp;&nbsp;&nbsp;&nbsp; 
              <a href="myprojects.jsp" id='m1' class="style12">Project</a>
             
        
        
        </td>
      </tr>
      
      <tr>
          <td class="a" height="50">&nbsp;&nbsp;<img src="imgaes/team-icon copy.png" width="54" height="44" align="absmiddle" />&nbsp;&nbsp;&nbsp;<a href="showprojectteam_1.jsp" class="style12 ">&nbsp;Team</a></td>
      </tr>
      <tr>
          <td class="a" height="50">&nbsp;&nbsp;<img src="imgaes/SEO_Monitoring-128 copy.png" width="49" height="39" align="absmiddle" />&nbsp;&nbsp;<a href="showprojectreport_1.jsp" class="style12 ">&nbsp;&nbsp;&nbsp;Reports</a></td>
      </tr>
      <tr>
          <% String myid=(String)session.getAttribute("id");  %>
        <td class="a" height="50">&nbsp;&nbsp;<img src="imgaes/seo-performance-2-xl copy.png" width="52" height="38" align="absmiddle" />&nbsp;&nbsp;&nbsp;<a href="performance1.jsp?empid=<%=myid%>" class="style12 ">&nbsp;Performance</a></td>
      </tr>
    </table> </td>
    <!------side menu ends---->