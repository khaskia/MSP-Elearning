/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import libs.databaseModel;
import libs.shared;
import model.UserModel;
import model.MaterialsModel;

/**
 *
 * @author Muhammed
 */
public class login extends HttpServlet {

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
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    }

    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession(false);
        if (session.getAttribute("user") == null) {
            shared.title="Mufic - Login";
            request.getRequestDispatcher("login.jsp").include(request, response);
        } else {
            shared.title="Mufic - Login";
            response.sendRedirect("login.jsp");
        }
        


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
            PrintWriter out  = response.getWriter();
        try {
            HttpSession session2 = request.getSession();
            session2.invalidate();
           // databaseModel dbmode = databaseModel.getConnection();
            UserModel user  = new UserModel();
            String email = request.getParameter("email");
            String password = request.getParameter("pass");
            String remember = request.getParameter("remember");
             ResultSet result = user.login(email, password);
             if(result.next()){
                 user.setId(result.getInt("studentID"));
                 user.setFname(result.getString("fname"));
                 user.setLname(result.getString("lname"));
                 user.setEmail(result.getString("email"));
                 user.setPassword(result.getString("password"));
                 user.setYearid(result.getString("yearID"));
                 user.setDeptid(result.getString("deptID"));
                 HttpSession session = request.getSession();
                 //session.invalidate();
                 session.setAttribute("user", user); 
                 
                 // Get User Department
                 ResultSet deptname = user.getDepartment(result.getString("deptID"));
                 if(deptname.next()){
                 session.setAttribute("deptname", deptname);
                 }
                 // Get Materials

                 session.setMaxInactiveInterval(60*60*24*30);
                 shared.title="Mufic - Login";

                 //Redirect user to his page Elearning
                  response.sendRedirect("Elearning");    

                 
             }else {
                request.setAttribute("ee", "Check your User name Or password");
                request.getRequestDispatcher("login.jsp").forward(request, response);

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
