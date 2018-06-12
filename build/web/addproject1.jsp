
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
   <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial"></span>
                         </div><br>
        <%
        String name=request.getParameter("name");
        String id=request.getParameter("project id");
        String type1 =request.getParameter("type of project");
        String client=request.getParameter("name_of_client");
        String description=request.getParameter("description");
         String start=request.getParameter("starting date");
          String deadline=request.getParameter("deadline");
       
        project x= new project();
         x.setName(name);
         x.setType(type1);
         x.setDescription(description);
         x.setId(id);
         x.setDeadline(deadline);
         x.setStart(start);
        
         x.setClient(client);
        boolean b=x.search();
        if(b)
{ %> <span style="font-size: 24px; font-family: cursive ">project already exist </span>
        <%}else
        {
       int a= x.save();
       %>
       
       <span style="font-size: 24px; font-family: cursive "> <%=a%> project added </span>
       <%  }
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

