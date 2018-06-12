



<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <link href="styles.css" rel="stylesheet" type="text/css">
         <script src="jquery-1.12.3.min.js"></script>
         <script src="jquery.validate.js"></script>
  
        <script>

            $(document).ready(
                    function() {

                      $("#f1").validate(
                              { 
                                  
                                  
                                }
                        );

                       
                    });

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
                <!-----mid section starts--->
                
                <td valign="middle" style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" align="center">
                    
                   
                     <div style="display: block; height:auto; position: relative;z-index: 1; top:30px">
                         <div class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Add Member</span>
                         </div><br>
                        <div style='display: block; border: 2px #000 solid; width: 500px; margin: auto; padding-top: 30px'>
                            <form name="form1" id="f1" method="post" action="add.jsp" enctype="multipart/form-data">
                        <div class="formCenter">
                        <br>
                        <p>
                            <b class="style14">Name</b>
                            <input type="text" name="name" id="textfield" class="required data">
                        </p>
                         
                         <p>
                        
                            <b class="style14" >Profile picture</b>
                            <input type="file" name="file1"  class="required ">
                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         </p>
                        <p>
                       
                                <b class="style14">Username</b>
                                <input type="text" name="user" id="textfield" class="required data">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;                           
                        </p>

                        <p>
                           <b class="style14">Password</b>
                                <input type="text" name="pass" id="textfield2" class="required data">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </p>
                        <p>
                           <b class="style14">E-mail</b>
                                <input type="text" name="email" id="textfield2" class="required data">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        </p>
                        <p>
                            <b class="style14"> Father Name</b>
                                </span>
                                <input type="text" name="father" id="textfield2" class="required data">\
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                         </p>
                          <p class="style14">
                            <label> 
                                <b class="style14">Highest Qualification
                                </b>
                                <select name="qualification" class="style9" id="select" class="required data">
                                    <option>Btech/BE</option>
                                    <option>Mtech</option>
                                    <option>MCA</option>
                                    <option>BCA</option>
                                </select>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </label>
                        </p>
                       
                        <p class="style14">
                            <b class="style14">Gender</b>
                            <label>
                                <input type="radio" name="gender"  value="male"  checked>
                            </label>
                            Male 
                            <label>
                                <input type="radio" name="gender"  value="female" >
                            </label>
                            Female &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

                            <p class="style14">
                                <b class="style14">Marital Status 
                            </b>

                            <label>
                                <input type="radio" name="married"  value="Married" >
                            </label>
                            Married
                            <label>
                                <input type="radio" name="married"  value="Unmarried" checked>
                            </label>
                            Unmarried &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</p>

                        <p>
                            <label><b class="style14">Contact number
                                </b>
                                <input type="text" name="contact" id="textfield2" class="required data">
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </label>
                        </p>
                           <p class="style14">
                            <label> 
                                <b class="style14">Country
                                </b>
                                <select name="country" class="style9" id="select" class="data">
                                    <option>India</option>
                                    <option>USA</option>
                                    <option>Brazil</option>
                                    <option>Australia</option>
                                </select>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </label>
                        </p>
                            <b class="style14">Address &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                            </b>
                       
                       
                                           
                            <textarea name="address" id="textarea" cols="45" rows="5" class="required"></textarea>
             
                        

                       
                        <p class="style12">
                            <label class="style12"> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                <input name="button" type="submit" class="button" id="button" value="Add">
                            </label>
                        </p></div>
                    </form> 
                        </div>
                    </div> 
                        
                        </td>





           


                <!----mid section ends------->
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>

