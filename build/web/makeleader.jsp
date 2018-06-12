


<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="projbean.teams"%>
<%@page import="projbean.project"%>
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

<%@include file="main table.jsp" %> <!--------header starts------>
  
      <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
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
                <td bgcolor="#FFFFFF" align="center">&nbsp;
                      <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                  
                    <%
                        String id = request.getParameter("employee");
                        String project_id = request.getParameter("project");
                        String str = "jdbc:oracle:thin:@localhost:1521:";
                        Class.forName("oracle.jdbc.OracleDriver");
                        
                        Connection con = DriverManager.getConnection(str, "test", "123456");
                        project p=new project();
                        p.setId(project_id);
                      
                        if(p.checkleaderforproject())
                        { 
                            %>
                            <span style="font-size: 24px" class="fonts">  A Team leader is already present for this project </span>
                            <% }
                        else {   
                        String SQL = "update teams set team_leader=1 where employee_id=? and project_id=?";
                        PreparedStatement ps = con.prepareStatement(SQL);
                        ps.setString(1,id);
                        ps.setString(2,project_id);
                        ps.executeUpdate();


                    %>
                    <span style="font-size: 24px; font-family: cursive" class="fonts"> Team leader has been assigned </span>
                    <% } %>
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

