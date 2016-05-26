/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

package usebean;

import connections.DBConnections;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Neha
 */
@WebServlet(name = "history", urlPatterns = {"/history"})
public class history extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
      
     
      HttpSession session = request.getSession();
      
      String driver_id= (String)session.getAttribute("id" );
      String order_id= (String)request.getParameter("code" );
      
          String customer_name= (String)session.getAttribute("customer_name" );
           String start_address= (String)session.getAttribute("start_address" );
           String  destinaton_address= (String)session.getAttribute("destination_address" );
            
            String  date= (String)session.getAttribute("date" );
           String  pickup_time= (String)session.getAttribute("pickup_time" );
         String  mobile_no= (String)session.getAttribute("mobile_no" ); 
          
            
     try{
        Connection con = DBConnections.getConnection();
      
      
               PreparedStatement pst1 = con.prepareStatement("insert into approved_orders(order_id,driver_id,cust_name,start_address,date,pickup_time,destination_address,mobile_no) values(?,?,?,?,?,?,?,?)");
               pst1.setString(1,order_id);
               pst1.setString(2, driver_id);
               pst1.setString(3, customer_name);
               pst1.setString(4, start_address);
               pst1.setString(5,date);
               pst1.setString(6, pickup_time);
               pst1.setString(7, destinaton_address);
               pst1.setString(8, mobile_no);
             pst1.execute();
             System.out.println("inserted approved");
     
      
      }
     
    catch(Exception ex){ request.getRequestDispatcher("driver_orders.jsp").forward(request, response);}
    
}
    
    
    
    
    
    
    

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
