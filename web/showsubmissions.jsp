
<%@page import="projbean.modules"%>
<%@page import="projbean.submitted_modules"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page import="projbean.editmember"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
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
                <td bgcolor="#FFFFFF">&nbsp;
                    <%   submitted_modules e=new submitted_modules();
                        String employee_id=request.getParameter("employee_id");
                          e.setEmployee(employee_id);
                          ArrayList a=e.showsubmissions();
                           if (a.size() == 0)
                                out.println("No data found");
                            else {
                    %>
                         <table border="1" width="1000px" cellspacing="0" class="tableback" style="border-radius: 5px">
                        <tr class="fonts tablehead" >
                            <th>Modules</th>
                            <th>ID</th>
                            <th>Start Date</th>
                            <th>Submission date</th>
                            
                        </tr>
                        <%
                            String name, ID,Points,module_id,start_date,submission_date;
                            Iterator k = a.iterator();
                            while (k.hasNext()) {
                                submitted_modules w = (submitted_modules) k.next();
                                name = w.getName();
                                 ID= w.getModule();
                                
                                 submission_date=w.getSubmission_date();
                                 modules m1=new modules();
                                 m1.setId(ID);
                                 m1.startdate();
                                 start_date=m1.getStart();
                            %>
                            <tr>
                                <td><%=name%></td>   
                               <td><%=ID%></td>
                               <td><%=start_date%></td>
                                <td><%=submission_date%></td>
                            </tr>
                         <% } %>
                         </table>
                         <% } %>
                
                
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

