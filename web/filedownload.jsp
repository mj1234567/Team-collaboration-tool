<% 
  String filename=request.getParameter("file1");
  String filepath=getServletContext().getRealPath("/files");
  response.setContentType("APPLICATION/OCTET-STREAM");
  response.setHeader("Content-Dispostion","attachment; filename=\"" + filename + "\"");
  java.io.FileInputStream fileInputStream=new  java.io.FileInputStream(filepath+"/"+ filename);
  
  int i;
  while((i=fileInputStream.read()) != -1){
      out.write(i);
  }
  fileInputStream.close();
%>