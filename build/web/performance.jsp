<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="projbean.performance"%>
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
            <span class="fonts" style="color:black; font-size: 36px; font-style: arial"></span>
             </div><br>
       <%
                String empid=request.getParameter("empid");
                
            performance  t = new performance();
            t.setEmployee_id(empid);
            ArrayList a = t.show();
            if (a.size() == 0)
            { 
           %>
              <span style="font-family:cursive ; font-size:24px"> No data Found </span>
                    
                    
           <% }
            else {
        %>
         <table border="0" width="200px" cellspacing="0" class="tableback shadow"  >
                <tr class="fonts tablehead" >
                <th>Name</th>
               
               
         
                
                 
                 <th>Starting Date</th> 
                <th>Deadline</th> 
                <th>Submission Date</th> 
                
                <th> Points </th>
                <th> Grades </th>
                
            </tr>
            <%
                String name,start,deadline,submission;
              Iterator k = a.iterator();
                while (k.hasNext()) { 
                    performance w = (performance) k.next();
                    name = w.getName();
                  
                    start=w.getStart();
                    deadline=w.getDeadline();
                   
                    submission=w.getSubmission_date();
                    
                     long days=0;
                       int grades=0;
                    try
                    {
                     SimpleDateFormat sd=new SimpleDateFormat("MM/dd/yyyy");
                        Date dh= sd.parse(deadline);
                            Calendar cal=Calendar.getInstance();
                            cal.setTime(dh);
                            long deadlinelong=cal.getTimeInMillis();
                            Date ds= sd.parse(submission);
                            cal.setTime(ds);
                            long submissionlong=cal.getTimeInMillis();
                            long diff=deadlinelong-submissionlong;
            
           
                             days=(long)(diff/(1000*60*60*24));
                             if(days>0&&days<=5)
                             grades=2;
                             if(days>5&&days<=10)
                             grades=3;
                             if(days>10)
                             grades=5;
                             
                                 
                             
                             
                            
                            
                            
                    }
                    catch(Exception ex)
                    {
                        ex.printStackTrace();
                    }
                    
            %>
            <tr class="fonts">
               
                <td><%=name%></td>
              
                 <td><%=start%></td>
                  <td><%=deadline%></td>
                 
                     <td><%=submission%></td>
                     <td><%=days%></td>
                      <td><%=grades%></td>
                     
                    
                    
                
               
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

                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
                
    
