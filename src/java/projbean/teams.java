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
public class teams {
    private  String employee;
    private String id;
     private String start;
      private String deadline;

    public String getStart() {
        return start;
    }

    public void setStart(String start) {
        this.start = start;
    }

    public String getDeadline() {
        return deadline;
    }

    public void setDeadline(String deadline) {
        this.deadline = deadline;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }
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

    
  

    

    
   
    
    public boolean search() throws Exception
    {
        boolean flag;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from teams where id=?";
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
    
    
    public boolean checkleader() throws Exception
    {
        boolean flag=false;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from teams where project_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,project);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {String a=rs.getString("team_leader");
           if(a.equalsIgnoreCase("1"))
           {flag=true;break;}
           else
               flag=false;
           }
         
        con.close();
        return flag;
    }
    public boolean save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");
        boolean b=false;
        Connection con = DriverManager.getConnection(str, "test", "123456");
        String SQL="select * from teams where project_id=? and employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1, project);
        ps.setString(2, employee);
         ResultSet r=ps.executeQuery();
         if(r.next())
           b=false;  
         else{
             b=true;
         
         SQL="insert into teams(id,employee_id,project_id,team_leader) values(?,?,?,0)";
         ps=con.prepareStatement(SQL);
        ps.setString(1,id);
        ps.setString(2,employee);
         ps.setString(3,project);
        
        int count=ps.executeUpdate(); }       
        con.close();
        return b;
    }
     public ArrayList showAll() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from teams where project_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,project);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            teams q=new teams();
            
            employee=rs.getString("employee_id");
            employeeFunctions e=new employeeFunctions();
            e.setId(employee);
            e.search1();
            q.employee=e.getName();
            q.id=e.getId();
            a.add(q);
        }
        
        con.close();
        return a;
    }
   
   public ArrayList myprojects() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from teams where employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,employee);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            teams q=new teams();
            
            project=rs.getString("project_id");
            project e=new project();
            e.setId(project);
            e.search1();
            q.project=e.getName();
            q.start=e.getStart();
            q.deadline=e.getDeadline();
            q.id=e.getId();
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
}
