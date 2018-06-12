

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="projbean.AssignedModules"%>
<%@page import="projbean.teams"%>
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
               <td bgcolor="#eee" align="center" valign="top">
        
        
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>  
                          
             <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial"></span>
             </div><br>
                    <%   String module_id,employee_id, starting_date,deadline;
                         module_id=request.getParameter("module");
                         employee_id=request.getParameter("employee");
                         starting_date=request.getParameter("starting date");
                         deadline=request.getParameter("deadline");
                         
                         AssignedModules a=new AssignedModules();
                         a.setModule(module_id);
                         a.setEmployee(employee_id);
                         a.setDeadline(deadline);
                         a.setStart(starting_date);
                         if(a.checkassign())
     {  %> <span style="font-family: cursive; font-size: 24px"> Module already assigned </span>
                        <% } else
                         
                         {a.save();
                         
                        %>
                        
                        <span style="font-family: cursive; font-size: 24px">    Module Assigned </span>
                        <%  } %>
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

