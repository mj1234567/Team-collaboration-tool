
<%@page import="projbean.teams"%>
<%@page import="java.util.jar.Attributes.Name"%>
<%@page import="projbean.project"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
<%@include file="functions.jsp" %>

</head>
<%@include file="main table.jsp" %>
 <!--------header starts------>
  <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>
                
 
      <%@include file="header.jsp"%>
 
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
    <!-------mid section starts------>
     <td bgcolor="#eee" align="center">
       <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
            <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial"></span>
             </div><br><br>
        <%
        
        String project=request.getParameter("name of project");
        String employee=request.getParameter("name of employee");
        String id=request.getParameter("id");
         teams x= new teams();
         x.setProject(project);
         x.setEmployee(employee);
         x.setId(id);
         System.out.println(project);
         System.out.println(employee);
         System.out.println(id);
        boolean b=x.search();
        if(x.save())
        {%>
        <span style="font-family: cursive; font-size: 24px">employee added</span>
      <%  }
        else
{ %>  <span style="font-family: cursive; font-size: 24px"> employee already added to this project </span>
         <%}
          %>
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

