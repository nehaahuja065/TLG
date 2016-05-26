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
import java.sql.ResultSet;
import javafx.scene.web.WebEvent;
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
@WebServlet(name = "turnoff", urlPatterns = {"/turnoff"})
public class turnoff extends HttpServlet {
DBConnections obj = new DBConnections();
    Connection conn;
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
     String  email= (String)session.getAttribute("name");
       String lat = request.getParameter("lat");
       String lon = request.getParameter("lon");
        System.out.println("dashboard.java"+lat+"   "+lon);
       System.out.println("dashboard.java"+email);
        try {
            conn= obj.getConnection();
            String sql1 ="update drivers set lat='"+lat+"', lon='"+lon+"' , is_exempt='0' where email='"+email+"'" ;
            PreparedStatement  pst=conn.prepareStatement(sql1);
            pst.executeUpdate();
//            JOptionPane.showMessageDialog(null, "changed");
            request.getRequestDispatcher("dashboard.jsp").forward(request, response);
            
            System.out.println("updated");
        
    }catch(Exception ex){System.out.println(ex);}
    
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
