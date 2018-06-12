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
/**
 *
 * @author ps
 */
public class performance {
    private  String name;
    private  String id;
    private  String employee_id;
    private  String start ;
    private  String deadline;
    private  String project;
    private  String module_id;
    private  String submission_date;

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getId() {
        return id;
    }

    public void setId(String id) {
        this.id = id;
    }

    public String getEmployee_id() {
        return employee_id;
    }

    public void setEmployee_id(String employee_id) {
        this.employee_id = employee_id;
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

    public String getProject() {
        return project;
    }

    public String getSubmission_date() {
        return submission_date;
    }

    public void setSubmission_date(String submission_date) {
        this.submission_date = submission_date;
    }

    public void setProject(String project) {
        this.project = project;
    }

    public String getModule_id() {
        return module_id;
    }

    public void setModule_id(String module_id) {
        this.module_id = module_id;
    }

 

public ArrayList show() throws Exception
    {
        ArrayList a=new ArrayList();
        
        String str = "jdbc:oracle:thin:@localhost:1521:";
        Class.forName("oracle.jdbc.OracleDriver");

        Connection con = DriverManager.getConnection(str, "test", "123456");
                String SQL="select modules.name,assigned_modules.starting_date,assigned_modules.deadline,submitted_module.submission_date from modules , assigned_modules,member,submitted_module where member.employee_id=? and assigned_modules.module_id=modules.id and assigned_modules.employee_id= member.employee_id";      

        PreparedStatement ps=con.prepareStatement(SQL);
       ps.setString(1, employee_id);
        ResultSet rs=ps.executeQuery();        
        while(rs.next())
        {
            performance q=new performance();
            
            
            q.name=rs.getString("name");
            
           
          
           
             
             q.start=rs.getString("starting_date");
              q.deadline=rs.getString("deadline");
              q.submission_date=rs.getString("submission_date");

             
             
            
            
              









            a.add(q);

        }
        
        con.close();
        return a;
    }
}