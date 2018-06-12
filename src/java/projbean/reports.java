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
public class reports {

    

    public String getFile1() {
        return file1;
    }

    public void setFile1(String file1) {
        this.file1 = file1;
    }
    private  String id;
    private  String name;
    private  String employee;
    private  String file1;
    private  String description;
    private  String module;
     private  String project;

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }
   

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
    
    
    public boolean search() throws Exception
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
        flag=true;
          else
        flag=false;
        
        con.close();
        return flag;
    }
    public int save() throws Exception{
        int count=0;
        try
        {
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into reports values(?,?,?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(SQL);
        System.out.println("data entered "+id+" "+module+" "+employee+" "+file1+" "+name+" "+description);
        ps.setString(1,id);
        ps.setString(2,module);
        ps.setString(3,employee);
        ps.setString(4,file1);
        ps.setString(5,name);
        ps.setString(6,description);
        
         
       count=ps.executeUpdate();        
        con.close();
        }catch(Exception e)
        {
            e.printStackTrace();
        }
        
        return count;
    }
    public ArrayList showprojects() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from projects";
        PreparedStatement ps=con.prepareStatement(SQL);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            reports q=new reports();
            q.name=rs.getString("name");
            q.id=rs.getString("id");
            
            
            
            a.add(q);
        }
        
        con.close();
        return a;
    }
    public ArrayList show() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from reports where module_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,module);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            reports q=new reports();
            
            q.name=rs.getString("name");
            q.id=rs.getString("id");
            q.employee=rs.getString("employee_id_member");
            q.module=rs.getString("module_id");
            q.description=rs.getString("description");
            q.file1=rs.getString("file1");
          
            
            
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
     public ArrayList showprojectreport() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from reports,modules,projects  where reports.module_id=modules.id and modules.project_id=projects.id and projects.id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,project);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            reports q=new reports();
            
            q.name=rs.getString("name");
            q.id=rs.getString("id");
            q.employee=rs.getString("employee_id_member");
            q.module=rs.getString("module_id");
            q.description=rs.getString("description");
            q.file1=rs.getString("file1");
          
            
            
            a.add(q);
        }
        
        con.close();
        return a;
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
