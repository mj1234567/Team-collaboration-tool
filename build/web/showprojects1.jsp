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
       $("#show1").hide();
        $("#show1").show(1000);
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
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
    <!-------mid section starts------>
     <td valign="middle" bgcolor="#eee" align="center">
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                          
             <div>
                 <% String m1=request.getParameter("name"); %>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial"><%=m1%></span>
            
            
             </div><br>
        <%  String project_id=request.getParameter("project_id");
                project p=new project(); 
                p.setId(project_id);
                ArrayList a=p.showAll1();
                        %>
                        
                <table border="0" width="1000px" cellspacing="0" class="tableback shadow" id="show1"  >
            
            <%
                String name,id,description,client,type,start,deadline,status="hello";
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
                    status=w.getStatus();
            %>
           <tr class="fonts tablehead" >
               
               <th>ID</th> <td><%=id%></td></tr>
           <tr> <th>Client</th><td><%=client%></td></tr>
             <tr>   <th>Type</th><td><%=type%></td></tr>
             <tr>   <th>Starting date</th><td><%=start%></td></tr>
             <tr>   <th>Deadline</th><td><%=deadline%></td></tr>
              <tr>  <th>Description</th><td><%= description%></td>
                               
            </tr>
            
            
            <%
                }
            %>
        </table>
        <br>
            <% if(status.equalsIgnoreCase("pending")){ %>
            <a href="approveproject.jsp?project_id=<%=project_id%>" class="button" >Mark as completed</a>
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

