
<%@page import="projbean.project"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%><link href="styles.css" rel="stylesheet" type="text/css">

<%@page import="projbean.editmember"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
<style>
.midlinks{
    font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	color: #990000;
    
}
-->
</style>
<script>
    $(document).ready(
            function()
    {
       $("#showprojects").hide();
        $("#showprojects").show(1000);
    }
            );
    
    </script>

<%@include file="functions.jsp" %>
</head>

<%@include file="main table.jsp" %>
  <!--------header starts------>
  
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
    <td bgcolor="#eee" align="center" valign="top">
        
        
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                          
             <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Project List</span>
             </div><br>
       <%
            project t = new project();
            ArrayList a = t.showAll();
            if (a.size() == 0)
            { out.println("No data found");
           %>
           <a href="addteam.jsp" style="background-color:#0A79B6; border:2px #0A79B6 outset; padding:3px; border-radius: 5px; text-decoration: none">Add team</a>
           <% }
            else {
        %>
        <table border="0" width="200px" cellspacing="0" class="tableback shadow" id="showprojects" >
           
            <%
                String name,id,description,client,type,start,deadline;
              Iterator k = a.iterator();
                while (k.hasNext()) { 
                    project w = (project) k.next();
                    name = w.getName();
                    id = w.getId();
                    description=w.getDescription();
                    client=w.getClient();
                    type=w.getType();
                    start=w.getStart();
                    deadline=w.getDeadline();
                    
            %>
            <tr class="fonts tablehead" >
                <th style="padding: 10px"><%=name%></th>
               
                               
            
           
                
                <td>
                   <a href="showteam.jsp?project=<%=id%>" class="links" >Show Team</a>
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
        </div>
  </tr>
  <tr>
    <td height="30">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>

