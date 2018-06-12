
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

     <body style="background-color: grey">
        <table width="100%"  border="0" align="center" cellspacing="0" cellpadding="0" >
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
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Project List</span>
             </div><br>
                    <div class="formCenter">
                        <form action="unassignmodule1.jsp">
                            <b class="fonts"> Modules of Project </b> <br>
                            <%
                                String project_id = request.getParameter("project_id");
                                modules m1 = new modules();
                                m1.setProject(project_id);
                                ArrayList a = m1.showpending();
                                if (a.size() == 0)
                                    out.println("No data found");
                                else {
                            %>
                            <select class="data shadow fonts" name="module" style='border-radius: 5px'>

                                <%
                                    String name, start, deadline, module_id;
                                    Iterator k = a.iterator();
                                    while (k.hasNext()) {
                                        modules w = (modules) k.next();
                                        name = w.getName();
                                        module_id = w.getId();
                                        start = w.getStart();
                                        deadline = w.getDeadline();

                                %>
                                <option value='<%=module_id%>'> <%=name%> </option>

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
                                    String name, start, deadline, employee_id;
                                    Iterator k = a.iterator();
                                    while (k.hasNext()) {
                                        teams w1 = (teams) k.next();
                                        name = w1.getEmployee();
                                        employee_id = w1.getId();


                                %>
                                <option value="<%=employee_id%>"> <%=name%> </option>

                                <%
                                } %>
                            </select>
                            <%  }
                            %>



                            <br><br>
                            <input type="submit" value="Unassign"  class='links button' style='color:#fff'> 

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

