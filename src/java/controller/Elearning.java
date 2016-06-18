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
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import model.*;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import libs.shared;

/**
 *
 * @author Muhammed
 */
public class Elearning extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            
            String year = request.getParameter("year");
            String dept = request.getParameter("dept");            
            HttpSession session = request.getSession();
            HttpSession session2 = request.getSession();

            UserModel currentuser = (UserModel)session.getAttribute("user");
            StaffMoled staff = (StaffMoled)session.getAttribute("staff");
            String term1 = request.getParameter("term");        
            
          
            
            
            
            // Get The Materials for First and second term
            if(currentuser!=null){
                ResultSet Firsttermmaterials = MaterialsModel.getMaterials(currentuser.getDeptid(),"1",currentuser.getYearid());
                session.setAttribute("Firsttermmaterials",Firsttermmaterials );
                ResultSet Secondtermmaterials = MaterialsModel.getMaterials(currentuser.getDeptid(),"2",currentuser.getYearid());
                session.setAttribute("Secondtermmaterials",Secondtermmaterials );
                // Get The Posts For The user Group
                 ResultSet posts = PostsModel.getPosts(currentuser.getDeptid(), currentuser.getYearid());
                 session.setAttribute("posts", posts);
                 shared.title="E-Learning portal";
            }
            if(staff !=null){
                if(year!=null && dept !=null){
                    session2.setAttribute("year", year);
                    session2.setAttribute("dept", dept);
                    
                    if (year.equals("3") && dept.equals("no")|| year.equals("4") && dept.equals("no") || year.equals("1") && !dept.equals("no") || year.equals("2") && !dept.equals("no")) {
                        session.setAttribute("epage", "Please Check The department");
                        request.getRequestDispatcher("error.jsp").forward(request, response);

                    }else{
                    ResultSet Firsttermmaterials = MaterialsModel.getMaterials((String)session2.getAttribute("dept"),"1",(String)session2.getAttribute("year"));
                    session2.setAttribute("Firsttermmaterials",Firsttermmaterials );
                    ResultSet Secondtermmaterials = MaterialsModel.getMaterials((String)session2.getAttribute("dept"),"2",(String)session2.getAttribute("year"));
                    session2.setAttribute("Secondtermmaterials",Secondtermmaterials );
                    // Get The Posts For The user Group
                     ResultSet posts = PostsModel.getPosts((String)session.getAttribute("dept"), (String)session.getAttribute("year"));
                     session2.setAttribute("posts", posts);
                      shared.title="E-Learning portal";
                    //Get Comments For each post
                    }
                    
                }else{
                    ResultSet Firsttermmaterials = MaterialsModel.getMaterials((String)session.getAttribute("dept"),"1",(String)session.getAttribute("year"));
                    session.setAttribute("Firsttermmaterials",Firsttermmaterials );
                    ResultSet Secondtermmaterials = MaterialsModel.getMaterials((String)session.getAttribute("dept"),"2",(String)session.getAttribute("year"));
                    session.setAttribute("Secondtermmaterials",Secondtermmaterials );
                    // Get The Posts For The user Group
                     ResultSet posts = PostsModel.getPosts((String)session.getAttribute("dept"), (String)session.getAttribute("year"));
                     session2.setAttribute("posts", posts);
                      shared.title="E-Learning portal";
                    //Get Comments For each post
                }
            

            }
            

            request.getRequestDispatcher("Elearning.jsp").forward(request, response);
        }
    }

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(Elearning.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Elearning.class.getName()).log(Level.SEVERE, null, ex);
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
            Logger.getLogger(Elearning.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Elearning.class.getName()).log(Level.SEVERE, null, ex);
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
