
<%@page import="projbean.submitted_modules"%>
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
          <script>
    $(document).ready(
            function()
    {
       $("#show").hide();
        $("#show").show(1000);
    }
            );
    
    </script>
        <script>
          
                     function approve(x)
                           { 
                               $.ajax(
                                       {   
                                           type:"get",
                                           url:"approvemodule1.jsp",
                                           data:"module_id="+x,
                                           async:false,
                                           success:function(result)
                                           {  
                                               $("#x1").html(result);
                                               
                                           }
                                       }     
                                  );
                 
                            }     
               
            
            </script>
            
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
                %>  `
       
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
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Modules of project</span>
                         </div><br>
       <%
            submitted_modules t = new submitted_modules();
            String module_id=request.getParameter("module_id");
            t.setModule(module_id);
            ArrayList a = t.show();
            if (a.size() == 0){
            %>    
            
            <span style="font-size: 24px; font-family: cursive"> No data found</span>
           <% } else {
        %>
        <table border="1" width="1000px" cellspacing="0" class="tableback" id="show">
            <tr class="fonts tablehead" >
                <th>Name</th>
               
                <th>Module ID</th>
                <th>Submitted by</th>
               
                <th>File</th>
                <th>Description</th>
                <th>Status</th>
                                
            </tr>
            <%
              String name,id,description,client,type,start,deadline,employee_id_member,leader,file1,accepted;
              Iterator k = a.iterator();
                while (k.hasNext()) {
                    submitted_modules w = (submitted_modules) k.next();
                    name = w.getName();
                    id = w.getId();
                    description=w.getDescription();
                    module_id=w.getModule();
                    employee_id_member=w.getEmployee();
                    accepted=w.getAccepted();
                    file1=w.getFile1();
                    
            %>
            <tr class="fonts">
               <td><%=name%></td>   
                
                <td><%=module_id%></td>
                <td><%= employee_id_member%></td>
                
                <% if(file1==null){ %>
                 <td align="center">No file</td>
                <% } else { %>
               <td ><a href="filedownload.jsp?file1=<%=file1%>" class="links" style="margin-left: 0px">Download Report</a></td>
                <% } %>
                <td><%=description%></td>
                <% if(accepted.equalsIgnoreCase("0")){ %>
                <td>
                    <a href="javascript:approve(<%= module_id%>)" ><span class="fonts links" id='x1' >Approve</span></a>
                </td>
                <% } 
                 else { %>
                <td>
                   <span class="fonts links" id='x1' >Approved</span>
                </td>
                <% } %>
            </tr>
            <%
                }
            %>
        </table> 
        <%
            }
        %>   
    <!------mid section ends------>
    <span id='x1'></span>
  </tr>
  
</table>
</body>
</html>

