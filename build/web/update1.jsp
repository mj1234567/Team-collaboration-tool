
<%@page import="projbean.employeeFunctions"%>
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

<%@include file="main table.jsp" %>
        <!--------header starts------>

        <%@include file="header.jsp" %>
        <!-------header ends---->
        <tr>
            <!------side menu starts------>

            <%@include file="side menu.jsp" %>
            <!------side menu ends---->

            <!-------mid section starts------>

            
                <% String username = request.getParameter("user"); %>
                 <td valign="middle" bgcolor="#eee" align="center" style="background-image: url(imgaes/jumbotron.jpg);" >
                    
                        
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial"><%=username%></span>
                         </div><br>
                
                <%
                    
                    editmember x = new editmember();
                    x.setUser(username);
                    boolean a = x.search();
                    String s;
                    if (a) {
                %>
                <form  action="update2.jsp">
                    <div class="formCenter"><br>
                        <p>
                            <span class="style14"> Name </span>
                            <input type="text" name="name" value="<%=x.getName()%>" class="data" readonly > 
                        </p>
                        <p>
                            <span class="style14">Username </span> <input type="text" class="data" name="user" value="<%=x.getUser()%>" readonly>
                        </p>
                        <p>
                            <span class="style14"> Password </span>
                            <input type="text" name="pass" value="<%=x.getPass()%>" class="data">
                        </p>
                        <p>
                            <span class="style14">Father's Name </span>
                            <input type="text" name="father" value="<%=x.getFather()%>" class="data" >
                        </p>
                        <p class="style14">
                            <select name="qualification">
                                <option <%=x.getQualification().equalsIgnoreCase("Btech/BE") ? "selected" : ""%> > Btech/BE </option>
                                <option <%=x.getQualification().equalsIgnoreCase("Mtech") ? "selected" : ""%> > Mtech </option>
                                <option <%=x.getQualification().equalsIgnoreCase("MCA") ? "selected" : ""%> > MCA</option>
                                <option <%=x.getQualification().equalsIgnoreCase("BCA") ? "selected" : ""%> > BCA </option>
                            </select>
                        </p>
                        <p class="style14">

                            Male  
                            <input type="radio" name="gender" value="male" <%=x.getGender().equalsIgnoreCase("male") ? "checked" : ""%>> 
                            Female 

                            <input type="radio" name="gender" value="female" <%=x.getGender().equalsIgnoreCase("female") ? "checked" : ""%>>
                        </p>
                        <p class="style14">
                            Married 
                            <input type="radio" name="married" value="married" <%=x.getMarried().equalsIgnoreCase("married") ? "checked" : ""%>> 
                            Unmarried
                            <input type="radio" name="married" value="unmarried" <%=x.getMarried().equalsIgnoreCase("unmarried") ? "checked" : ""%>>
                        </p>
                        <p>
                            <span class="style14">Contact number </span>
                            <input type="text" name="contact" value="<%=x.getContact()%>" class="data" >
                        </p>
                        <p class="style14">
                            <span class="style14"> Country </span>
                            <select name="country">
                                <option <%=x.getCountry().equalsIgnoreCase("india") ? "selected" : ""%> > india </option>
                                <option <%=x.getCountry().equalsIgnoreCase("USA") ? "selected" : ""%> > USA </option>
                                <option <%=x.getCountry().equalsIgnoreCase("brazil") ? "selected" : ""%> > brazil </option>
                                <option <%=x.getCountry().equalsIgnoreCase("australia") ? "selected" : ""%> > australia </option>
                            </select>
                        </p>
                        <p>
                            <span class="style14">  Address </span>
                            <textarea name="address" id="textarea" cols="45" rows="5"> <%= x.getAddress()%> </textarea>
                        </p>
                        <p> 
                            <input type="submit" value="make changes" class="fonts">
                        </p>
                    </div>
                </form>
                <% } else
                %> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
               

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

