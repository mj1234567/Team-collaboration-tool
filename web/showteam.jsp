
<%@page import="projbean.employeeFunctions"%>
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
<script>
    $(document).ready(
            function()
    {
       $("#show").hide();
        $("#show").show(1000);
    }
            );
    
    </script>

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
    <td bgcolor="#eee" align="center">
       <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
            <div>
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Team</span>
             </div><br><br>
        <% String project=request.getParameter("project");
           teams t=new teams();
           t.setProject(project);
           boolean c= t.checkleader();
           
           
           ArrayList a=t.showAll();
             if (a.size() == 0){ %>
             <span style="font-size: 24px; font-family: cursive">  No data found</span> <br><br>
             <a href="addteam.jsp" class="links"><span style="font-size: 24px; font-family: cursive">Add team</span></a>
           <% } else {
        %>
        <table border="1"  cellspacing="0" class="tableback" style="border-radius:5px" id="show">
            <tr class="fonts tablehead" >
                <th>Team</th>
                <th>options</th>            
            </tr>
            <%
                  String employee,id,image="",contact="";
              Iterator k = a.iterator();
                while (k.hasNext()) {
                    teams w = (teams) k.next();
                    employee =w.getEmployee();
                    id=w.getId();
                    employeeFunctions e=new employeeFunctions();
                    e.setId(id);
                    e.showimage();
                    image=e.getImage();
                    contact=e.getContact();
                    e.setProject(project);
                    boolean b=e.checkteamleader();
            %>
            <tr class="fonts">
                
                <td><img src="files/<%=image%>" width="150px"><br><%=employee%><br><%=contact%> </td>
                <% if(c){ 
                    if(b) { %> 
                <td><span class="fonts links" >Team Leader</span></td>
                 <% } else { %>
                  <td><span class="fonts links" >Member</span></td>
                <% } }
                  else{%>
                  
                  <td><a href="makeleader.jsp?employee=<%=id%>&&project=<%=project%>" class="fonts links" >Make Team Leader</a></td>
                  <% } %>
            </tr>
            <%
                }
            %>
        </table>
        <%
            }
          
        %>   
           
           
        </div>     
    <!------mid section ends------>
  </tr>
  <tr>
    <td height="30">&nbsp;</td>
    <td>&nbsp;</td>
  </tr>
</table>
</body>
</html>

