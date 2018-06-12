

<%@page import="projbean.editmember"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>

<%@page import="projbean.message"%>
<%@page import="projbean.reports"%>
<%@page import="java.io.File"%>
<%@page import="org.apache.commons.fileupload.FileItem"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="org.apache.commons.fileupload.DiskFileUpload"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>Untitled Document</title>
        <link href="styles.css" rel="stylesheet" type="text/css">

        <script src="jquery-1.12.3.min.js"></script>
        <script src="jquery.validate.js"></script>
        <%@include file="functions.jsp"%>
    </head>
    <%@include file="main table.jsp" %>
      <!--------header starts------>
            <%  String s = (String) session.getAttribute("username");
                if (s == null) {
                    response.sendRedirect("log in page.html");
                }
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
                         <div style="background-image: url(imgaes/brown-mountains-wallpaper.jpg);" class="blur-back"></div>
                          <div>
                               <span class="fonts" style="color:black; font-size: 36px; font-style: arial"></span>
                         </div><br>
            <% 
               String username="", file1="",address="",password="",country="",gender="",name="",id="",father="",qualification="",married="",
                       contact="",email="";
                ServletContext f = this.getServletContext();
   
                String path = f.getRealPath("/files");

    System.out.println("PATH : "+path);
    DiskFileUpload file_upload = new DiskFileUpload();
    //Parsing request and store references in List
    List list = file_upload.parseRequest(request);
    Iterator i1 = list.iterator();

   
    while (i1.hasNext()) {
        //Iterate each request reference as FileItem
        FileItem f1 = (FileItem) i1.next();
        if (f1.isFormField()) {  //get field name if simple input controls
            if (f1.getFieldName().equals("user")) {
               username=f1.getString();}
             if (f1.getFieldName().equals("address")) {
               address=f1.getString();}
             if (f1.getFieldName().equals("pass")) {
                password=f1.getString();}
             if (f1.getFieldName().equals("gender")) {
               gender=f1.getString();}
             if (f1.getFieldName().equals("country")) {
                country=f1.getString();}
             if (f1.getFieldName().equals("name")) {
               name=f1.getString();}
             if (f1.getFieldName().equals("Id")) {
                id=f1.getString();}
             if (f1.getFieldName().equals("father")) {
               father=f1.getString();}
             if (f1.getFieldName().equals("qualification")) {
               qualification=f1.getString();}
             if (f1.getFieldName().equals("married")) {
               married=f1.getString();}
             if (f1.getFieldName().equals("contact")) {
               contact=f1.getString();}
            if (f1.getFieldName().equals("email")) {
                email=f1.getString();}
           
            
          
        } else 
        {
           if(f1.getFieldName().equals("file1")) 
           {
               file1=f1.getName();
               if(file1!=null && file1.length()>0 && f1.getSize()<(50*1024))
               {
                  File file=new File(file1);
                  
                  file1=file.getName();
                  System.out.println("path and image "+path+" "+file1);

                File f4=new File(path,file1);
                 
                f1.write(f4);
                
               }
           }
              
        }
        
    }
    
       


     editmember x= new editmember();
         x.setUser(username);
        x.setAddress(address);
        x.setCountry(country);
        x.setGender(gender);
        x.setPass(password);
        x.setName(name);
        x.setId(id);
        x.setFather(father);   
        x.setQualification(qualification);      
        x.setMarried(married);           
        x.setContact(contact);
        x.setFile1(file1);
        x.setEmail(email);
        boolean b=x.search();
        if(b)
{ %>  <span style="font-size: 24px; font-family: cursive"> Member already exist </span>
       <% } else
        {
       int a= x.save();
       %>
       
       <span style="font-size: 24px; font-family: cursive"> <%=a%> member added </span>
       <%  }
                %>
                <!------mid section ends------>
                </td>             
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>

