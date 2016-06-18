/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import libs.shared;
import model.UserModel;

/**
 *
 * @author Muhammed
 */
public class updateuser extends HttpServlet {

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
        PrintWriter out = response.getWriter();
        
        try {
            int id =Integer.parseInt( request.getParameter("ID"));
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String cpassword = request.getParameter("cpassword");
            String year = request.getParameter("year");
            String dept = request.getParameter("dept");

             
             if (year.equals("3") && dept.equals("no")|| year.equals("4") && dept.equals("no") || year.equals("1") && !dept.equals("no") || year.equals("2") && !dept.equals("no")) {
                request.setAttribute("error",  "Please Check Your department");
                request.getRequestDispatcher("register.jsp").include(request, response);
            }
            else if(!email.matches("^\\S+@\\S+$")){
                request.setAttribute("error", "Please Enter Availd Email");
                request.getRequestDispatcher("login.jsp").include(request, response);
            }  else{
                UserModel Updateduser = new UserModel();
                Updateduser.setId(id);
                Updateduser.setFname(fname);
                Updateduser.setLname(lname);
                Updateduser.setEmail(email);
                Updateduser.setPassword(password);
                Updateduser.setYearid(year);
                Updateduser.setDeptid(dept);
                
                if (Updateduser.Updateuser(id)==1){
                    request.setAttribute("Done", "User Updated");
                    request.getRequestDispatcher("viewstudents").include(request, response);
                }
                
                
                
                
                
                
                
                
            }          
            
            
            
            
        } catch (Exception e) {
            out.print(e.getMessage()+" Exxxxxxxxxxx");
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
