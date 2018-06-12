
<%@page import="projbean.editmember"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<script src="jquery-1.12.3.min.js"></script>
         <script src="jquery.validate.js"></script>
<%@include file="functions.jsp" %>

</head>

<body style="background-color: grey">
        <table width="100%"  border="0" align="center" cellspacing="0" cellpadding="0" >
  <!--------header starts------>
  <% String s=(String)session.getAttribute("username");
  String username=request.getParameter("user");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>
  <%@include file="header.jsp" %>
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
   
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
    <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/download.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial"><%=username%></span>
                         </div><br>
                       
     <%
           
           editmember x=new editmember();
           x.setUser(username);
           boolean b=x.search();
           if(b)
           { String password,gender,country,address,father,qualification,contact,name,married;
           password=x.getPass();
           gender=x.getGender();
           country=x.getCountry();
           address=x.getAddress();
           father=x.getFather();
           qualification=x.getQualification();
           contact=x.getContact();
           name=x.getName();
           married=x.getMarried();
           
         %>
        
         
                 <table border="0" width="200px" cellspacing="0" class="tableback shadow" id="showprojects" >
                     <tr class="tablehead">
                         <th>name </th><td><%=username%></td>
                     </tr>
                     <tr>    <th>password</th><td><%=password%></td></tr>
                     <tr>  <th>gender </th> <td><%=gender%></td></tr>
                      <tr>    <th>country</th><td><%=address%></td></tr>
                      <tr>    <th>address</th> <td><%=country%></td></tr>
                       <tr>   <th>Father's Name</th> <td><%=father%></td></tr>
                       <tr>    <th>Highest Qualification</th><td><%=qualification%></td></tr>
                       <tr>   <th>Contact</th> <td><%=contact%></td></tr>
                       <tr>   <th>Marital status</th> <td><%=married%></td>
                     </tr>
                     
                     
                      
                     
                       
                     
                     
                      
                      
                      
                
                     
         </table>
         <% } 
           else
              %> no record found
         
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

