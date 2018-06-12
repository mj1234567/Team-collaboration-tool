
                    
                    
<%@page import="projbean.employeeFunctions"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbean.teams"%>
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
        <%@include file="functions.jsp" %>
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
                         <div style="background-image: url(imgaes/d.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Projects</span>
                         </div><br>
                <% String id = (String) session.getAttribute("id");
                        teams t = new teams();
                        t.setEmployee(id);
                        ArrayList a = t.myprojects();
                        if (a.size() == 0){
                            
                        %>
                        <span style="font-size:24px; font-family: cursive" >No data found
                        <%
                        }else {
                    %>
                    <table border="0" width="1000px" cellspacing="0" class="tableback" style="border-radius:10px" id="show">
                       
                        <%
                            String name,start, deadline,project_id;
                            Iterator k = a.iterator();
                            while (k.hasNext()) {
                                teams w = (teams) k.next();
                                name = w.getProject();
                                project_id=w.getId();
                                start = w.getStart();
                                deadline = w.getDeadline();

                        %>
                       <tr class="fonts tablehead" >
                            <th><%=name%></th>
                 
                <td><a href="showprojectreport2.jsp?employee_id=<%=id%>&&project=<%=project_id%>" class="links">show Reports</a></td> 
                                
                            

                        </tr>
                        
                        <%
                            }
                        %>
                    </table>
                    <%
                        }
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



