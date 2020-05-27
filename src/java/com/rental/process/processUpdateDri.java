/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rental.process;

import com.rental.dao.DaoDriver;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Reo
 */
public class processUpdateDri extends HttpServlet {

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
        
        String platNo = request.getParameter("platNo");
        int capacity = Integer.parseInt(request.getParameter("capacity"));
        int driID = Integer.parseInt(request.getParameter("driID"));
        int cond = Integer.parseInt(request.getParameter("cond"));
        
        int status = DaoDriver.updateBus(platNo, capacity, driID, cond);
        if(status > 0){
            DaoDriver.saveSchedule(driID);            
            out.println("<script type='text/javascript'>");
            out.println("alert('Details successfully updated!')");
            out.println("location = 'driver/dashboardDriver.jsp'");
            out.println("</script>");
        }
        else{
            out.println("<script type='text/javascript'>");
            out.println("alert('Something went wrong!')");
            out.println("location = 'driver/viewUpdateDri.jsp'");
            out.println("</script>");
        }
        
        try {
            /* TODO output your page here. You may use following sample code.
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processUpdateDri</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processUpdateDri at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");*/
        }
        finally{
            out.close();
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
