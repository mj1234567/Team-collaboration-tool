



<%@page import="projbean.project"%>
<%@page import="projbean.clientFunctions"%>

<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbean.editmember"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <link href="styles.css" rel="stylesheet" type="text/css">
         <script src="jquery-1.12.3.min.js"></script>
         <script src="jquery.validate.js"></script>
  
        <script>

            $(document).ready(
                    function() {

                      $("#f1").validate(
                              { 
                                  
                                  
                                }
                        );

                       
                    });

        </script> 
        <%@include file="functions.jsp" %>
    </head>

    <%@include file="main table.jsp" %>
            <!--------header starts------>
            <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>
                  
            <%@include file="header.jsp" %>
            <!-------header ends---->
            <tr>
                <!------side menu starts------>
                <%@include file="side menu.jsp" %>
                <!------side menu ends---->
                <!-----mid section starts--->
            
                 <td valign="middle" style="background-image: url(imgaes/img_business_solution.jpg);" align="center">
                     
                          <div>
                               <span class="fonts" style="color:White; font-size: 36px; font-style: arial">Add Team</span>
                         </div><br>
                        <div style='display: block; border: 2px #000 solid; width: 500px; margin: auto; padding-top: 30px'>
                    <form name="form1" id="f1" method="post" action="addteam1.jsp">
                        <div class="formCenter" style="border-radius: 10px">
                            <br><br>
                            <span class="style12">Name of project</span><br>
                        <select name="name of project" class="style9" id="select" class="required data">
                                      <%
                                         project t1 = new project(); 
                                          ArrayList a1 = t1.showprojects();
                                           if (a1.size() == 0)
                                           out.println("No data found");
                                                 else {
                                                     String name,id;
                                                       Iterator k = a1.iterator();
                                                        while (k.hasNext()) {
                                                       project w = (project)k.next();
                                                                 name=w.getName();
                                                                 id=w.getId();
                                                                
                                           
                                                 %>
                                                
                                                     <option value="<%=id%>"><%= name %></option>
                                                 <% } 
} %>  
                        </select>     <br><br>                              
                        <span class="style12">Name of Employee</span><br>
                                 <select name="name of employee" class="style9" id="select" class="required data">
                                      <%
                                        editmember t2 = new editmember(); 
                                          ArrayList a2 = t2.showAll();
                                           if (a2.size() == 0)
                                           out.println("No data found");
                                                 else {
                                                     String name,id;
                                                       Iterator k = a2.iterator();
                                                        while (k.hasNext()) {
                                                           editmember w = (editmember)k.next();
                                                                 name=w.getName();
                                                                 id=w.getId();
                                                                
                                           
                                                 %>
                                                
                                                     <option value="<%=id%>"><%= name %></option>
                                                 <% } 
} %>  
                                 </select><br><br>
                                

                            <label class="style12">
                                <input name="button" type="submit" class="links" id="button" value="Add">
                            </label>
                        
                        </div>
                    </form>  
                  </div>
                     </div>
                </td>





           


                <!----mid section ends------->
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>

