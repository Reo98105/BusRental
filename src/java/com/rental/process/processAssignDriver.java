/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rental.process;

import com.rental.dao.DaoBook;
import com.rental.dao.DaoDriver;
import com.rental.user.userBooking;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author type001
 */
public class processAssignDriver extends HttpServlet {

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
        
        int id = Integer.parseInt(request.getParameter("id"));
        int dayID = Integer.parseInt(request.getParameter("dayID"));
        String[] driverID = request.getParameterValues("driver");
        int length = driverID.length;
        int approval = 2;
        
        userBooking book = new userBooking();
        book.setStatus(approval);
        book.setBookID(id);
        
        int status = 0;
        for (int i = 0; i < length; i++){
            int driID = Integer.parseInt(driverID[i]);
            status = DaoDriver.updateSchedule(id, driID, dayID);
        }
        int status2 = DaoBook.updateDetail(book);
        if(status > 0){
            out.println("<script type='text/javascript'>");
            out.println("alert('Driver successfully assigned!')");
            out.println("location = 'pph/viewBookRequest.jsp'");
            out.println("</script>");
        }
        else{
            out.println("<script type='text/javascript'>");
            out.println("alert('Something went wrong!')");
            out.println("location = 'pph/viewBookRequest.jsp'");
            out.println("</script>");
        }
        try {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processAssignDriver</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processAssignDriver at " + request.getContextPath() + "</h1>");
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
