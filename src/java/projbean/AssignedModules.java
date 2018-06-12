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
public class AssignedModules {
    
    private  String start;
    private  String deadline;
    private  String project;
    private  String employee;
    private  String module;
    private String module_id;

    public String getModule_id() {
        return module_id;
    }

    public void setModule_id(String module_id) {
        this.module_id = module_id;
    }

    public String getProject() {
        return project;
    }

    public void setProject(String project) {
        this.project = project;
    }

  

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

   

   
  

   
    
   
     public ArrayList show() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from assigned_modules where employee_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,employee);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            AssignedModules q=new AssignedModules();
            String a1=rs.getString("module_id");
            q.module_id=a1;
           modules m=new modules();
           m.setId(a1);
           m.search();
           q.module=m.getId();
            q.start=rs.getString("starting_date");
            q.deadline=rs.getString("deadline");
            a.add(q);
        }
        
        con.close();
        return a;
    }
    
     
     
    public int save() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="insert into assigned_modules values(?,?,?,?)";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,module);
        ps.setString(2,employee);
        ps.setString(3,start);
        ps.setString(4,deadline);
     
        int count=ps.executeUpdate();
        SQL="update modules set assigned=1 where id=?";
        ps=con.prepareStatement(SQL);
        ps.setString(1,module);
        ps.executeUpdate();
        con.close();
        return count;
    }
   
    public int delete() throws Exception{
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="delete assigned_modules where employee_id=? and module_id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
       
        ps.setString(1,employee);
        ps.setString(2,module);
       
        
        
        int count=ps.executeUpdate();        
        con.close();
        return count;
    }
   
   
                         
       public boolean checkassign() throws Exception
       {
             boolean flag=false;
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
        
        String SQL="select * from modules where id=?";
        PreparedStatement ps=con.prepareStatement(SQL);
        ps.setString(1,module);
        ResultSet r=ps.executeQuery();
        if(r.next())
        {
            if(r.getString("assigned").equalsIgnoreCase("1"))
                flag=true;
        }
     return flag;
        
    }
    
}
