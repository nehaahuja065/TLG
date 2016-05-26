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
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.jsp.PageContext;

/**
 *
 * @author Neha
 */
@WebServlet(name = "View_Profile_By_Admin", urlPatterns = {"/View_Profile_By_Admin"})
public class View_Profile_By_Admin extends HttpServlet {
String email1 ;
RegisterBean obj = new RegisterBean();

    ArrayList<Object> list = new ArrayList<>();
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
        
        
    

        }
    public ArrayList verify()
    {
       
    
               Connection con = DBConnections.getConnection();
        try
        {
            PreparedStatement pst = con.prepareStatement("select * from drivers ");
           
            
            
            ResultSet rst = pst.executeQuery();
            if(rst.next())
            {  
              
              obj.setMembertype(rst.getString("membertype"));
              obj.setImage(rst.getString("image"));
              obj.setName(rst.getString("name"));
              obj.setEmail(rst.getString("email"));
              obj.setMobile(rst.getString("mobile"));
              obj.setProv_image(rst.getString("prov_image"));
              obj.setExpiry_date(rst.getString("expiry_date"));
              obj.setLimo_image(rst.getString("limo_image"));
              obj.setLicense_exp_date(rst.getString("license_exp_date"));
              obj.setPassword(rst.getString("password"));
              obj.setVehicle(rst.getString("vehicle"));
              obj.setVehicle_image(rst.getString("vehicle_image"));
              obj.setProv_plate(rst.getString("prov_plate"));
              obj.setLimo_plate(rst.getString("limo_plate"));
              obj.setInsurance_image(rst.getString("insurance_image"));
              obj.setIns_exp_date(rst.getString("ins_exp_date"));
              obj.setLat(rst.getString("lat"));
              obj.setlon(rst.getString("lon"));
              obj.setPayment_mode(rst.getString("payment_mode"));
              obj.setCard_type(rst.getString("card_type"));
              obj.setCardholder_name(rst.getString("cardholder_name"));
              obj.setCardno(rst.getString("cardno"));
              obj.setExp_month(rst.getString("exp_month"));
              obj.setExp_year(rst.getString("exp_year"));
              obj.setPayment_date(rst.getString("payment_date"));
              obj.setCurrent_date(rst.getString("current_date"));
              obj.setAddress(rst.getString("address"));
              obj.setShift_time(rst.getString("shift_time"));
              obj.setShift_start_time(rst.getString("shift_start_time"));
              obj.setShift_end_time(rst.getString("shift_end_time"));
              
              
              list.add(obj);
              
              
            
        }
            
        }
        catch(Exception ex)
        {
            System.err.println(ex);
            ex.printStackTrace();
            
        }
        return list;
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
