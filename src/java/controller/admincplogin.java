/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import controller.login;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import libs.shared;
import model.StaffMoled;
import model.UserModel;

/**
 *
 * @author Muhammed
 */
public class admincplogin extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
        }
    }

    
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
        String Admin =(String) request.getContextPath();
        PrintWriter out = response.getWriter();
        try {
            HttpSession session2 = request.getSession();
            session2.invalidate();
           // databaseModel dbmode = databaseModel.getConnection();
            StaffMoled staff  = new StaffMoled();
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String remember = request.getParameter("remember");
            ResultSet result = staff.login(email, password);
             if(result.next()){
                 staff.setStaffID(result.getInt("StaffID"));
                 staff.setFname(result.getString("fname"));
                 staff.setLname(result.getString("lname"));
                 staff.setJob(result.getString("job"));
                 staff.setEmail(result.getString("email"));
                 staff.setPassword(result.getString("password"));
                 staff.setAu(result.getString("au"));
                 HttpSession session = request.getSession();
                 // session.invalidate();
                 session.setAttribute("staff", staff); 
                
                 session.setMaxInactiveInterval(60*60*24*30);
                 shared.title="Mufic - Admin Login";

                 //Redirect user to his page Elearning
                response.sendRedirect("admin.jsp");

                 
             }else {
                request.setAttribute("Stafferror", "Please Check your login data");
                request.getRequestDispatcher("staffLogin.jsp").forward(request, response);

            }
            
            
            
            
            
            
            
        } catch (SQLException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);out.print(ex.getMessage());
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(login.class.getName()).log(Level.SEVERE, null, ex);out.print(ex.getMessage());
        }
           
            




        
        
        
        
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
