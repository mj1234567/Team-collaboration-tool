/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package projbean;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

/**
 *
 * @author mani
 */
public class submitted_modules {

    public String getDate1() {
        return date1;
    }

    public void setDate1(String date1) {
        this.date1 = date1;
    }

    public String getFile1() {
        return file1;
    }

    public void setFile1(String file1) {
        this.file1 = file1;
    }
    private  String name;
    private  String date1;
    private  String description;
    private  String file1;
    private  String employee;
    private  String module;
    private  String accepted;
    private  String submission_date;

    public String getEmployee() {
        return employee;
    }

    public void setEmployee(String employee) {
        this.employee = employee;
    }

    public String getModule() {
        return module;
    }

    public void setModule(String module) {
        this.module = module;
    }

  
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

   

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public String getClient() {
        return client;
    }

    public void setClient(String client) {
        this.client = client;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
    private  String client;
    private  String id;
    
    
    
     public int submit() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into submitted_module values(?,?,?,?,?,0,?,0)";
        PreparedStatement ps=con.prepareStatement(SQL);
       
        ps.setString(1,employee);
        ps.setString(2,module);
       
        ps.setString(3,file1);
        ps.setString(4,name);
        ps.setString(5,description);
        ps.setString(6,submission_date);
         
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
     
     public boolean isEvaluated() throws Exception{
         boolean flag=false;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from submitted_module where module_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
       
        ps.setString(1,module);
       
         
        ResultSet r=ps.executeQuery();
        if(r.next())
        { if(r.getString("evaluated").equalsIgnoreCase("1"))
                    flag=true;}
        
            
        con.close();
        return flag;
    }

    public String getSubmission_date() {
        return submission_date;
    }

    public void setSubmission_date(String submission_date) {
        this.submission_date = submission_date;
    }
   
    public ArrayList show() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from submitted_module where module_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,module);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            submitted_modules q=new submitted_modules();
            
            q.name=rs.getString("name");
            q.accepted=rs.getString("accepted");
            q.employee=rs.getString("employee_id");
            q.module=rs.getString("module_id");
            q.description=rs.getString("description");
            q.file1=rs.getString("file1");
            a.add(q);
        }
        
        con.close();
        return a;
    }

     public ArrayList showsubmissions() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from submitted_module where employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,employee);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            submitted_modules q=new submitted_modules();
            
            q.name=rs.getString("name");
            q.accepted=rs.getString("accepted");
            q.employee=rs.getString("employee_id");
            q.module=rs.getString("module_id");
            q.description=rs.getString("description");
            q.file1=rs.getString("file1");
            q.submission_date=rs.getString("submission_date");
            a.add(q);
        }
        
        con.close();
        return a;
    }

    public String getAccepted() {
        return accepted;
    }

    public void setAccepted(String accepted) {
        this.accepted = accepted;
    }
    
    public boolean search1() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from projects where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ResultSet rs=ps.executeQuery();        
        if(rs.next())
        {flag=true;
        
        name=rs.getString("name");
       
        }
          else
        flag=false;
        
        con.close();
        return flag;
    }
    public boolean checkleaderforproject() throws Exception
    {
        boolean flag=false;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from teams where project_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
        
        employee=rs.getString("employee_id");
        employeeFunctions e=new employeeFunctions();
        e.setId(employee);
        if(e.checkteamleader())
            flag=true;
        }
       
        
        con.close();
        return flag;
    }
    
}
