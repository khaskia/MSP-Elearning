/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import model.UserModel;

/**
 *
 * @author Muhammed
 */
public class viewstudents extends HttpServlet {

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
            throws ServletException, IOException, SQLException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String UserID = request.getParameter("UserID");
        String delete = request.getParameter("delete");
/// --------------------- This is for Update and View User
//        try {

            //View USers
             if (UserID == null && delete == null ) {
                UserModel user = new UserModel();
                ResultSet allusers = user.getStudentData();

                request.setAttribute("allusers", allusers);
                request.getRequestDispatcher("students.jsp").forward(request, response);
             //View single user for Update 
            }else if (UserID !=null ){
                UserModel updateuser = new UserModel();
                ResultSet userforupdate = updateuser.getStudentDataForUpdate(Integer.parseInt(UserID));
                if(userforupdate.next()){
                updateuser.setId(userforupdate.getInt("studentID"));
                updateuser.setFname(userforupdate.getString("fname"));
                updateuser.setLname(userforupdate.getString("lname"));
                updateuser.setEmail(userforupdate.getString("email"));
                updateuser.setPassword(userforupdate.getString("password"));
                updateuser.setYearid(userforupdate.getString("yearID"));
                updateuser.setDeptid(userforupdate.getString("deptID"));

                request.setAttribute("updateuser", userforupdate);
                request.getRequestDispatcher("Updateuser.jsp").forward(request, response);
                }
            }else if (delete !=null ){
                 try {
                     UserModel userfordelete = new UserModel();
                    userfordelete.delete(Integer.parseInt(delete));
                    UserModel user = new UserModel();
                    ResultSet allusers = user.getStudentData();

                request.setAttribute("allusers", allusers);
                request.setAttribute("Done", "user DeletedSucc");
                 } catch (Exception e) {
                     out.print(e.getMessage()+"sss");
                 }
                request.getRequestDispatcher("students.jsp").forward(request, response);

                
            }

//        } catch (Exception ex) {
//          //  ex.printStackTrace();
//          //  out.print("Exep" + ex.getMessage());
//        }
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(viewstudents.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(viewstudents.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(viewstudents.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(viewstudents.class.getName()).log(Level.SEVERE, null, ex);
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
