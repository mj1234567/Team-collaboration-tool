



<%@page import="projbean.teams"%>
<%@page import="projbean.modules"%>
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
        <link href="dcalendar.picker.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script src="dcalendar.picker.js" type="text/javascript" ></script>
        
  
         <%@include file="functions.jsp" %> 
        
   
         
  <script>
            $(document).ready(
                    function () {
                        $(".datepicker").dcalendarpicker();
                        $("#form1").validate(
                                {
                                    rules:
                                    {
                                        
                                    }
                                }

                        );

                    });
            </script>
      
        
    </head>
    <%@include file="main table.jsp" %>
     <!--------header starts------>
            <% String s = (String) session.getAttribute("username");
                if (s == null) {
                    response.sendRedirect("log in page.html");
                }
            %>
            <%@include file="employee header.jsp" %>    

            <!-------header ends---->
            <tr>
                <!------side menu starts------>
                <%@include file="employee side menu.jsp" %>
                <!------side menu ends---->
                <!-------mid section starts------>
                <td bgcolor="#eee" align="center" valign="top">
        
        
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>  
                          
             <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Assign Module</span>
             </div><br>

                    <div class="formCenter">
                        <form action="assignmodule1.jsp"><br>
                        <b class="fonts"> Modules of Project </b> <br>
                        <%
                            String project_id = request.getParameter("project_id");
                            modules m1 = new modules();
                            m1.setProject(project_id);
                            ArrayList a = m1.show();
                            if (a.size() == 0)
                                out.println("No data found");
                            else {
                        %>
                        <select class="data shadow fonts" name="module" style='border-radius: 5px'>

                            <%
                                String name, start, deadline,module_id;
                                Iterator k = a.iterator();
                                while (k.hasNext()) {
                                    modules w = (modules) k.next();
                                    name = w.getName();
                                   module_id=w.getId();
                                    start = w.getStart();
                                    deadline = w.getDeadline();

                            %>
                            <option value='<%=module_id %>'> <%=name%> </option>

                            <%
                                } %>
                        </select>
                              <%  }
                            %>
                           
                            <br><br>
                              <b class="fonts"> Employees in Project </b> <br>
                        <%
                            
                            teams m2 = new teams();
                            m2.setProject(project_id);
                             a = m2.showAll();
                            if (a.size() == 0)
                                out.println("No data found");
                            else {
                        %>
                        <select class="data shadow fonts" name="employee" style='border-radius: 5px'>

                            <%
                                String name, start, deadline,employee_id;
                                Iterator k = a.iterator();
                                while (k.hasNext()) {
                                    teams w1 = (teams) k.next();
                                    name = w1.getEmployee();
                                    employee_id=w1.getId();
                                    

                            %>
                            <option value="<%=employee_id%>"> <%=name%> </option>

                            <%
                                } %>
                        </select>
                              <%  }
                            %>
                              
                     

                            <br><br>
                             <p>
                            <b class="style14">Starting Date</b>
                            <input type="text" name="starting date" id="textfield" class="required data fonts datepicker">
                         </p>
                         <p>
                            <b class="style14">Deadline Date</b>
                            <input type="text" name="deadline" id="textfield2" class="required data fonts datepicker">
                        </p>


                                <input type="submit" value="Assign"  >
                            
                            
                        </form>
                            </div> 
                            
                </td>
                <!------mid section ends------>
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>

