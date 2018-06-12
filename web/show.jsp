
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
        <%@include file="functions.jsp" %>
        <style>
            .midlinks{
                font-size: 16px;
                font-family: Arial, Helvetica, sans-serif;
                color: #990000;

            }
            -->
        </style>

        
    </head>

    <%@include file="main table.jsp" %>
            <!--------header starts------>

            <% String s = (String) session.getAttribute("username");
                if (s == null) {
                    response.sendRedirect("log in page.html");
                }
            %>  

            <%@include file="header.jsp" %>
            <!----header menu ends----->
        </td>
    </tr>

    <!-------header ends---->
    <tr>
        <!------side menu starts------>
        <%@include file="side menu.jsp" %>
        <!------side menu ends---->
        <!-------mid section starts------>
        <td valign="top" style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg)" align="center">
                     
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Members</span>
                         </div><br>
                       
            <%
                editmember t = new editmember();
                ArrayList a = t.showAll();
                if (a.size() == 0)
    { %><span style="font-size: 24px; font-family: cursive">No data found</span>
                <%} else {
            %>
            <table border="1" width="1000px" cellspacing="0" class="tableback" >
                <tr class="fonts tablehead">
                    <th>username</th>
                   
                    <th>Contact</th>
                    
                    <th>ID</th>
                    <th>Actions&nbsp;&nbsp;&nbsp;</th>                 
                </tr>
                <%
                    String username, password, gender, address, country, status, father, qualification, contact, married, id;
                    Iterator k = a.iterator();
                    while (k.hasNext()) {
                        editmember w = (editmember) k.next();
                        username = w.getUser();
                        password = w.getPass();
                        gender = w.getGender();
                        address = w.getAddress();
                        country = w.getCountry();
                        status = w.getStatus();
                        contact = w.getContact();
                        qualification = w.getQualification();
                        father = w.getFather();
                        married = w.getMarried();
                        id = w.getId();
                %>
                <tr class="fonts <%=status.equalsIgnoreCase("0") ? "disabled" : ""%> ">
                    <td ><a href="search1.jsp?user=<%=username%>" class="fonts links" ><%=username%></a></td>   
                   
                    <td><%=contact%></td>
                   
                    <td><%=id%></td>

                    <td><a href="update1.jsp?user=<%=username%>" class="fonts links" ><img src="imgaes/edit-icon.png" width="20" title="Edit"></a>
                        <a href="delete1.jsp?user=<%=username%>" class="fonts links" ><img src="imgaes/delete-xl copy.png" width="20" title="Delete"></a>
                            <% if (status.equalsIgnoreCase("1")) {%>
                        <a href="disable.jsp?user=<%=username%>" class="fonts links" > <img src="imgaes/Logout-128k copy.png" width="20" title="Disable"></a>
                            <% } else {%>
                        <a href="enable.jsp?user=<%=username%>" class="fonts links" ><img src="imgaes/Logout-128k copy.png" width="20" title="Enable"></a> 
                            <% }  %>
                    </td>
                </tr>
                <%
                    }
                %>
            </table>
            <%
                }
            %>   
            <!------mid section ends------>
    </tr>
    <tr>
    
        <td height="30">&nbsp;</td>
        <td>&nbsp;</td>
    </tr>
</table>
</body>
</html>

