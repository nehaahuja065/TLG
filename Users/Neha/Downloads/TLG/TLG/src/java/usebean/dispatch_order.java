package usebean;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import connections.DBConnections;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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
@WebServlet(urlPatterns = {"/dispatch_order"})
public class dispatch_order extends HttpServlet {

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
       String driverid= (String)session.getAttribute("id");
        System.out.println(driverid);
       String cust_name=request.getParameter("name");
        String mobile=request.getParameter("mobile");
         String date=request.getParameter("date");
         String start_address=request.getParameter("start_address");
         String destination_address=request.getParameter("end_address");
         String pickup_time=request.getParameter("pickup_time");
         String order_id="0";
         String cust_id="0";
        String status="ongoing";
               Connection con = DBConnections.getConnection();
        try
        {
            PreparedStatement pst = con.prepareStatement("select id from drivers where id!= '"+driverid+"'");
            
            
            
            System.out.println("pst.execute()"+pst.execute());
            ResultSet rst = pst.executeQuery();
           while(rst.next()){
              
               
              String driver_id =rst.getString("id");
               
               System.out.println("driver_id"+driver_id);
                
              
               PreparedStatement pst1 = con.prepareStatement("insert into dispatched_orders(order_id,driver_id,cust_name,start_address,date,pickup_time,destination_address,mobile_no,status) values(?,?,?,?,?,?,?,?,?)");
               pst1.setString(1,order_id);
               pst1.setString(2, driver_id);
               pst1.setString(3, cust_name);
               pst1.setString(4, start_address);
               pst1.setString(5,date);
               pst1.setString(6, pickup_time);
               pst1.setString(7, destination_address);
               pst1.setString(8, mobile);
               pst1.setString(9,status );
               pst1.execute();
               System.out.println("inserted order dispatched_order.java");
             
            
    }
           request.getRequestDispatcher("dispatch.jsp").forward(request, response);
            System.out.println("orders dispatched");
        }catch(Exception ex){System.out.println("ex"+ex);}
    
    
    
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
