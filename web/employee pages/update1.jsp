
<%@page import="projbean.employeeFunctions"%>
<%@page import="projbean.editmember"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
<link href="styles.css" rel="stylesheet" type="text/css">
<script>
function show()
{ var t=document.getElementById("editmember");
  t.style.visibility="visible"; 
}
function hide()
{ var t=document.getElementById("editmember");
  t.style.visibility="hidden"; 
}
</script>
</head>

<body background="imgaes/a.jpg">
<table width="1261" height="570" border="0" align="center">
  <!--------header starts------>
  
  <%@include file="employee header.jsp" %>
  <!-------header ends---->
  <tr>
    <!------side menu starts------>
   
    <%@include file="side menu.jsp" %>
    <!------side menu ends---->
   
    <!-------mid section starts------>
    
    <td align="center" bgcolor="#FFFFFF">
     <%
           String username=(String)session.getAttribute("username");
           employeeFunctions x=new employeeFunctions();
           x.setUser(username);
           boolean a=x.search();
           String s;
           if(a){
         %>
         <form style="align:center" action="update2.jsp">
             
             <p class="style14"> 
                 Name
                 <input type="text" name="name" value="<%=x.getName()%>" readonly ><br><br> 
                
                 
                 
                Username <input type="text" name="user" value="<%=x.getUser()%>" readonly><br><br> 
                 Password 
                 <input type="text" name="pass" value="<%=x.getPass()%>" ><br><br> 
                 Father's Name
                 <input type="text" name="father" value="<%=x.getFather()%>" ><br><br> 
                 <select name="qualification">
                 <option <%=x.getQualification().equalsIgnoreCase("Btech/BE")?"selected":""%> > Btech/BE </option>
                 <option <%=x.getQualification().equalsIgnoreCase("Mtech")?"selected":""%> > Mtech </option>
                 <option <%=x.getQualification().equalsIgnoreCase("MCA")?"selected":""%> > MCA</option>
                 <option <%=x.getQualification().equalsIgnoreCase("BCA")?"selected":""%> > BCA </option>
                </select><br><br> 
               
             Male  
             <input type="radio" name="gender" value="male" <%=x.getGender().equalsIgnoreCase("male")?"checked":""%>> 
             Female 
             <input type="radio" name="gender" value="female" <%=x.getGender().equalsIgnoreCase("female")?"checked":""%>><br><br> 
             Married 
             <input type="radio" name="married" value="married" <%=x.getMarried().equalsIgnoreCase("married")?"checked":""%>> 
             Unmarried
             <input type="radio" name="married" value="unmarried" <%=x.getMarried().equalsIgnoreCase("unmarried")?"checked":""%>><br><br>
             Contact number
                 <input type="text" name="contact" value="<%=x.getContact()%>" ><br><br> 
             
                <select name="country">
                 <option <%=x.getCountry().equalsIgnoreCase("india")?"selected":""%> > india </option>
                 <option <%=x.getCountry().equalsIgnoreCase("USA")?"selected":""%> > USA </option>
                 <option <%=x.getCountry().equalsIgnoreCase("brazil")?"selected":""%> > brazil </option>
                 <option <%=x.getCountry().equalsIgnoreCase("australia")?"selected":""%> > australia </option>
                </select><br><br> 
                
            <textarea name="address" id="textarea" cols="45" rows="5"> <%= x.getAddress()%> </textarea><br><br> 
            
            <input type="submit" value="make changes" > </p>
         </form>
         <% } 
              else
               %>no record found
           
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

