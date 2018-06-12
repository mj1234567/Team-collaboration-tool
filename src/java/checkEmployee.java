/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import static java.awt.SystemColor.text;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author mani
 */
@WebServlet(urlPatterns = {"/checkEmployee"})
public class checkEmployee extends HttpServlet {

    /**
     *
     * @param req
     * @param resp
     * @throws ServletException
     * @throws IOException
     * @throws ClassNotFoundException
     * @throws SQLException
     */
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        
        resp.setContentType("text/html");
        try {
            PrintWriter p2=resp.getWriter();
           
            String str = "jdbc:oracle:thin:@localhost:1521:";
            try {
                 
                Class.forName("oracle.jdbc.OracleDriver");
            } catch (ClassNotFoundException ex) {
                Logger.getLogger(checkEmployee.class.getName()).log(Level.SEVERE, null, ex);
            }
            
           
            Connection con=DriverManager.getConnection(str,"test","123456");
            String username,password,ID;
            username=req.getParameter("user");
            password=req.getParameter("pass");
            ID=req.getParameter("ID");
           
                 
            String q="select * from member";
            PreparedStatement p=con.prepareStatement(q);
            
            ResultSet r=p.executeQuery();
            
            
            PrintWriter p1=resp.getWriter();
            HttpSession h=req.getSession();
            h.setAttribute("username",username);
             h.setAttribute("type","Employee");
            String a,b,c,d;
            
            while(r.next())
            { 
                a=r.getString("username");
                b=r.getString("password");
                c=r.getString("status");
                d=r.getString("employee_id");
                
                if(username.equalsIgnoreCase(a) && password.equalsIgnoreCase(b) && c.equalsIgnoreCase("1") )
                { h.setAttribute("id", d);resp.sendRedirect("employee side.jsp"); break;}
               
            
            }
            
            
            
            p1.print("<script>alert('invalid login')</script>");
            p1.print("<script>location.href='log in page.html'</script>");
            
           
            
             
            
            
        } catch (SQLException ex) {
            Logger.getLogger(checkEmployee.class.getName()).log(Level.SEVERE, null, ex);
        }
        
           
           
           
    }
   
    
}
