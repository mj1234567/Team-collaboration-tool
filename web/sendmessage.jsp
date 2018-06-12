
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
            <% String s = (String) session.getAttribute("username");
                if (s == null) {
                    response.sendRedirect("log in page.html");
                }
            %>
            <%@include file="employee header.jsp" %>    

            <!-------header ends---->
            <tr>
                <!------side menu starts------>
                <%@include file="employee side menu.jsp" %>
                <!------side menu ends---->
                <!-------mid section starts------>
                <td bgcolor="#eee" align="center" valign="top">
        
        
        <div style="display: block; height: 800px; position: relative;z-index: 1;">
                         <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                          
             <br>
            <% 
                String msg="", file1="";
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
            if (f1.getFieldName().equals("msg")) {
               msg=f1.getString();}
            
           
            
          
        } else 
        {
           if(f1.getFieldName().equals("file1")) 
           {
               file1=f1.getName();
               if(file1!=null && file1.length()>0)
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
    
       


    String a= request.getParameter("from");
    String b= request.getParameter("to");
   Date d=new Date();
    SimpleDateFormat f1=new SimpleDateFormat("dd/MM/yyyy");
    String date1=f1.format(d); 
   
    message s1=new message();
     s1.setMessage(msg);
     s1.setFile1(file1);
     s1.setTo(b);
     s1.setFrom_id(a);
     s1.setDate1(date1);
  int chk=s1.save();
 if(chk==1){
     
 %>
 <span style="font-size: 24px; font-family: cursive">message sent</span>
 <% }else
  out.println("message not sent");

                               
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

