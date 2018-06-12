


<%@page import="projbean.AssignedModules"%>
<%@page import="projbean.employeeFunctions"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbean.modules"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <link href="styles.css" rel="stylesheet" type="text/css">
        <link href="styles.css" rel="stylesheet" type="text/css">
        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <script>
    $(document).ready(
            function()
    {
       $("#show").hide();
        $("#show").show(1000);
    }
            );
    
    </script>
        <%@include file="functions.jsp"%>
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
               <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Modules of project</span>
                         
                         </div>
                          <br>
                        <% employeeFunctions e = new employeeFunctions();
                            String employee_id = (String) session.getAttribute("id");
                            e.setId(employee_id);
                            String project=request.getParameter("project_id");
                            e.setProject(project);
                             int f1=0;
                            boolean b = e.checkteamleader();
                            if (b) {

                                String project_id = request.getParameter("project_id");
                                modules m1 = new modules();
                                m1.setProject(project_id);
                                ArrayList a = m1.show();
                                if (a.size() == 0)
        { %>  <span style="font-family:cursive ;font-size: 24px;">No data found</span>
                                <a href="addmodule.jsp"  class="button">Add Module</a>
                                <%} else {  f1=1;
                        %>
                        
                        <table border="1" id="show" width="1000px" cellspacing="0" class="tableback" style="border-radius: 5px">
                            <tr class="fonts tablehead" >
                                <th>Name</th>
                                <th>Starting date</th>
                                <th>Deadline</th>
                                <th>Status</th>
                                <th>Show reports</th>
                                <th>Show Submission</th>
                            </tr>
                            <%
                                String name, start, deadline, module_id, status;
                                Iterator k = a.iterator();
                                while (k.hasNext()) {
                                    modules w = (modules) k.next();
                                    name = w.getName();
                                    module_id = w.getId();
                                    start = w.getStart();
                                    deadline = w.getDeadline();
                                    status = w.getStatus();
                            %>
                            <tr class="fonts">
                                <td><%=name%></td>   
                                <td><%=start%></td>
                                <td><%=deadline%></td>
                                <td><%=status%></td>
                                <td><a href="showReport.jsp?employee_id=<%= employee_id%>&&module_id=<%=module_id%>" class="links">show Reports</a></td> 
                                <td><a href="approveModule.jsp?employee_id=<%= employee_id%>&&module_id=<%=module_id%>" class="links">Module Submission</a></td> 


                            </tr>
                            <%
                                }
                            %>
                        </table>
                        <%
                            }

                        %> 

                        <br>
                        <% if(f1==1){ %>
                        <div style='margin-left: 600px;'>
                            
                             <a href="addmodule.jsp"  class="button">Add Module</a>
                            <a href='unassignmodule.jsp?project_id=<%=project_id%>' class="button"> Unassign Module</a> 
                           


                            <a href='assignmodule.jsp?project_id=<%=project_id%>' class="button">Assign Module </a>
                        </div> 
                        <% } %>
                        <% } else {
                            AssignedModules f = new AssignedModules();
                            String name;
                            f.setEmployee(employee_id);
                            ArrayList a = f.show();
                            if (a.size() == 0)
                                out.println("No data found");
                            else {
                        %>
                        <table border="1" width="1000px" cellspacing="0" class="tableback" style="border-radius: 5px">
                            <tr class="fonts tablehead" >
                                <th>Name</th>
                                <th>Starting date</th>
                                <th>Deadline</th>
                                <th>Reports</th>
                                <th>Submit</th>
                            </tr>
                            <%
                                String start, deadline, module_id;
                                Iterator k = a.iterator();
                                while (k.hasNext()) {
                                    AssignedModules w = (AssignedModules) k.next();
                                    name = w.getModule();
                                    start = w.getStart();
                                    deadline = w.getDeadline();
                                    module_id = w.getModule_id();
                                    modules m2 = new modules();
                                    boolean b1 = m2.checkpending(module_id);


                            %>
                            <tr class="fonts">
                                <td><%=name%></td>   
                                <td><%=start%></td>
                                <td><%=deadline%></td>

                                <td align="center">
                                    <% if (b1) {%>
                                    <a href="submitReport.jsp?employee_id=<%= employee_id%>&&module_id=<%= module_id%>" class="links fonts">Submit Report/</a>
                                    <% }%>
                                    <a href="showReport1.jsp?employee_id=<%= employee_id%>&&module_id=<%= module_id%>" class="links fonts">Show Report</a> </td>                            
                                <td>
                                    <% if (b1) {%>
                                    <a  href="submitModule.jsp?employee_id=<%= employee_id%>&&module_id=<%= module_id%>" class="links fonts">Submit Module</a>
                                    <% } else {
                                    %>
                                    Completed
                                    <% } %>
                                </td>

                            </tr>
                            <%
                                }
                            %>
                        </table>
                        <%
                            }

                        %> 

                        <%   }
                        %>
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

