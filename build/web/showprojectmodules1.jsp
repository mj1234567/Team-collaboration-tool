
<%@page import="projbean.modules"%>
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
       $("#show").hide();
        $("#show").show(1000);
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
             <%   String project_id=request.getParameter("project");
            modules t = new modules();
            t.setProject(project_id);
            ArrayList a = t.show();
            if (a.size() == 0)
            {
           %>
           <span style="font-size: 24px; font-family: cursive">No Module Found</span>
           <% }
            else {
        %>
       <table border="1" id="show" width="1000px" cellspacing="0" class="tableback" style="border-radius: 5px">
                            <tr class="fonts tablehead" >
                                <th>Name</th>
                                <th>Starting date</th>
                                <th>Deadline</th>
                                <th>Status</th>
                                
                                
                            </tr>
            <%
                String name,id,description,client,type,start,deadline,status;
              Iterator k = a.iterator();
                while (k.hasNext()) { 
                    modules w = (modules) k.next();
                    name = w.getName();
                    id = w.getId();
                    description=w.getDescription();
                    status=w.getStatus();
                    type=w.getType();
                    start=w.getStart();
                    deadline=w.getDeadline();
                    
            %>
             <tr class="fonts">
                                <td><%=name%></td>   
                                <td><%=start%></td>
                                <td><%=deadline%></td>
                                <td><%=status%></td>
                                
                              

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

