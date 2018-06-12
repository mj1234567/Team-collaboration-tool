
<%@page import="projbean.reports"%>
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
<style>
.midlinks{
    font-size: 16px;
	font-family: Arial, Helvetica, sans-serif;
	color: #990000;
    
}
-->
</style>

<%@include file="functions.jsp" %>
</head>
<%@include file="main table.jsp" %>
 <!--------header starts------>
  
      <% String s=(String)session.getAttribute("username");
                if(s==null)
                { response.sendRedirect("log in page.html");}
                %>  
       
  <%@include file="employee header.jsp" %>
      <!----header menu ends----->
    </td>
  </tr>
 
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
    <%@include file="employee side menu.jsp" %>
    <!------side menu ends---->
    <!-------mid section starts------>
    <td valign="middle" bgcolor="#eee" align="center">
                     <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Reports</span>
                         </div><br>
       <%
            reports t = new reports();
            String module_id=request.getParameter("module_id");
            t.setModule(module_id);
            ArrayList a = t.show();
            if (a.size() == 0)
                out.println("No data found");
            else {
        %>
         <table border="0" width="200px" cellspacing="0" class="tableback shadow" id="showprojects" >
             <tr class="fonts tablehead" >
                <th>Name</th>
                <th>ID</th>
                <th>Module ID</th>
                <th>Submitted by</th>
               
                <th>File</th>
                <th>Description</th>
                
                                
            </tr>
            <%
              String name,id,description,client,type,start,deadline,employee_id_member,leader,file1;
              int a1=1;
              Iterator k = a.iterator();
                while (k.hasNext()) {
                    reports w = (reports) k.next();
                    name = w.getName();
                    id = w.getId();
                    description=w.getDescription();
                    module_id=w.getModule();
                    employee_id_member=w.getEmployee();
                    
                    file1=w.getFile1();
                    
                    
            %>
            <tr class="fonts tablehead" >
               <td align="center"><%=name%></td>   
                <td align="center"><%=id%></td>
                <td align="center"><%=module_id%></td>
                <td align="center"><%= employee_id_member%></td>
                
                 <% if(file1==null){ %>
                 <td align="center">No file</td>
                <% } else { %>
               <td ><a href="filedownload.jsp?file1=<%=file1%>" class="links" style="margin-left: 0px">Download Report</a></td>
                <% } %>
                <td align="center"><%=description%></td>
                
               
               
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

