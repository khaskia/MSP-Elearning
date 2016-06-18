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

/**
 *
 * @author Muhammed
 */
public class register extends HttpServlet {

 
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {        
            HttpSession session = request.getSession(false);
        if (session.getAttribute("user") == null) {
            shared.title="Mufic - Register";
            request.getRequestDispatcher("register.jsp").include(request, response);
        } else {
            shared.title="Mufic - Register";
            response.sendRedirect("register.jsp");
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
            PrintWriter out = response.getWriter();

        try {
            String fname = request.getParameter("fname");
            String lname = request.getParameter("lname");
            String email = request.getParameter("email");
            String password = request.getParameter("password");
            String cpassword = request.getParameter("cpassword");
            String year = request.getParameter("year");
            String dept = request.getParameter("dept");
//        out.println(fname);
//        out.println(lname);
//        out.println(email);
//        out.println(password);
//        out.println(year);
//        out.println(dept);
            databaseModel dbmodel = databaseModel.getConnection();
            PreparedStatement checkemailstatement = dbmodel.statement("select * from students where email=? ");
            checkemailstatement.setString(1, email);
            ResultSet searchresult = dbmodel.fetchData(checkemailstatement);
            if (searchresult.next()) {
                request.setAttribute("error", "You May Registered Before <a href=\"login.jsp\" > Forget Your Password! </a> ");
                request.getRequestDispatcher("register.jsp").include(request, response);
            } else if(fname.length() >= 100 || password.length() >= 100 ||email.length() >= 100 ){
                request.setAttribute("error",  "Please Check Your Data Length");
                request.getRequestDispatcher("register.jsp").include(request, response);
            }
            else if (year.equals("3") && dept.equals("no")|| year.equals("4") && dept.equals("no") || year.equals("1") && !dept.equals("no") || year.equals("2") && !dept.equals("no")) {
                request.setAttribute("error",  "Please Check Your department");
                request.getRequestDispatcher("register.jsp").include(request, response);
            }else if(!password.equals(cpassword)){
                request.setAttribute("error", "Please Confirm that the password is matched");
                request.getRequestDispatcher("register.jsp").include(request, response);
            }
            else if(!email.matches("^\\S+@\\S+$")){
                request.setAttribute("error", "Please Enter a Valid Email");
                request.getRequestDispatcher("login.jsp").include(request, response);
            }
                else {
                UserModel user = new UserModel();
                user.setFname(fname);
                user.setLname(lname);
                user.setEmail(email);
                user.setPassword(password);
                user.setYearid(year);
                user.setDeptid(dept);
                
                if (user.saveuser()==1){
                    HttpSession session = request.getSession(true);
                    session.setAttribute("user", user);
                    ResultSet deptname = user.getDepartment(user.getDeptid());
                    if(deptname.next()){
                    session.setAttribute("deptname", deptname);
                    }
                    request.getRequestDispatcher("register.jsp").include(request, response);
                }else {
                    request.setAttribute("error", "Please Check Your Data");
                    shared.title="Mufic - Register";
                    request.getRequestDispatcher("register.jsp");
                }
                
            }

        } catch (SQLException ex) {
                    request.setAttribute("error", "Check Your Data !!!! ");
                    request.getRequestDispatcher("register.jsp");


        } catch (ClassNotFoundException ex) {
            Logger.getLogger(register.class.getName()).log(Level.SEVERE, null, ex);out.print(ex.getMessage());
        } catch(Exception ex){
            out.print(ex.getMessage());
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
