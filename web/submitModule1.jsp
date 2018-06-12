
<%@page import="projbean.submitted_modules"%>
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
                <td bgcolor="#eee" align="center">
                    <div style="display: block; height: 800px; position: relative;z-index: 1;">
                        <div style="background-image: url(imgaes/Depositphotos_36314863_m-1500x1000.jpg);" class="blur-back"></div>  
                        <div>
                            <span class="fonts" style="color:black; font-size: 36px; font-style: arial">Submit Module</span>
                        </div><br><br> 
            <% 
                String name="",description="",employee_id="",module_id="",file1="",submission="";
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
            if (f1.getFieldName().equals("name")) {
                name=f1.getString();
             }
            if (f1.getFieldName().equals("description")) {
                description = f1.getString();
            }
            if (f1.getFieldName().equals("employee_id")) {
                employee_id= f1.getString();
            }
            if (f1.getFieldName().equals("module_id")) {
                module_id= f1.getString();
            }
            if (f1.getFieldName().equals("submission_date")) {
                submission= f1.getString();
            }
            
          
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
    
   
    
     submitted_modules r=new submitted_modules();
     r.setName(name);
     r.setDescription(description);
     r.setEmployee(employee_id);
     r.setModule(module_id);
     r.setSubmission_date(submission);
  int chk=r.submit();
 if(chk==1)
 { 
%><span style="font-size: 24px; font-family: cursive">  Module saved</span>
<% }else
  out.println("Module not saved");

                
               
               %>
                <!------mid section ends------>
                
                    </div>
                </td>
            </tr>
            <tr>
                <td height="30">&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
        </table>
    </body>
</html>

