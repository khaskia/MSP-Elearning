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
import model.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Muhammed
 */
public class addpost extends HttpServlet {

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
        HttpSession session = request.getSession();
        UserModel currentuser = (UserModel) session.getAttribute("user");
        StaffMoled staff = (StaffMoled) session.getAttribute("staff");
        
        String commentContent  = request.getParameter("content");
        String postID = request.getParameter("contentID");
        
        PrintWriter out = response.getWriter();
        try {
            
            //addcomment(String CommentContent,long commentwriter,long postId
            if(postID != null){
                if (currentuser != null) {
                    int comment = PostsModel.addcomment(commentContent, currentuser.getId(), Integer.parseInt(postID));
                    if (comment >= 1) {
                        request.setAttribute("doneC", "done adding a record");
                    } else {
                        request.setAttribute("errorC", "errors");
                    }
                }
                 if (staff != null) {
                    int comment = PostsModel.addcomment(commentContent, staff.getStaffID(), Integer.parseInt(postID));
                    if (comment >= 1) {
                        request.setAttribute("doneC", "done adding a record");
                    } else {
                        request.setAttribute("errorC", "errors");
                    }

            }
                
                
            }else{
            
            
            
            //(String postContent,String year,String dept,int writer)
            

                String postContent = request.getParameter("postcontent");
                
                   
                if (currentuser != null) {
                    int post = PostsModel.addpost(postContent, currentuser.getYearid(), currentuser.getDeptid(), currentuser.getId());
                    if (post >= 1) {
                        request.setAttribute("done", "done adding a record");
                    } else {
                        request.setAttribute("error", "errors");
                    }
                }
                    
                if (staff != null) {
                    int post = PostsModel.addpost(postContent, (String) session.getAttribute("year"), (String) session.getAttribute("dept"), staff.getStaffID());
                    if (post >= 1) {
                        request.setAttribute("done", "done adding a record");
                    } else {
                        request.setAttribute("error", "errors");
                    }

                }

            
            }
            request.getRequestDispatcher("Elearning").forward(request, response);
           // response.sendRedirect("Elearning.jsp");
        } catch (Exception ex) {
            out.print(ex.getMessage());
        }
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
            Logger.getLogger(addpost.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addpost.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(addpost.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(addpost.class.getName()).log(Level.SEVERE, null, ex);
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
