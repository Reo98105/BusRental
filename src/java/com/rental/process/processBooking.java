package com.rental.process;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.user.userBooking;
import com.rental.user.userStaff;
import com.rental.dao.DaoStaff;
import com.rental.dao.DaoBook;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author type001
 */
public class processBooking extends HttpServlet {

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
        
         //get value from booking form
        String bd = request.getParameter("bookDate");
        String dn = request.getParameter("dateNeed");
        String depart = request.getParameter("depart");
        String ab = request.getParameter("arriveback");
        String purpose = request.getParameter("purpose");
        String location = request.getParameter("location");
        int pax = Integer.parseInt(request.getParameter("pax"));
        
        HttpSession session = request.getSession(false);
        String currentUser = (String)session.getAttribute("un");    //get current user
        
        //get current user's id
        userStaff ustaff = DaoStaff.getUserID(currentUser);
        int currentID = ustaff.getID();
        
        userBooking ubook = new userBooking();        
        ubook.setID(currentID);
        ubook.setBookdate(bd);
        ubook.setDateNeed(dn);
        ubook.setDepart(depart);
        ubook.setArriveback(ab);
        ubook.setPurpose(purpose);
        ubook.setLocation(location);
        ubook.setPax(pax);
        
        //check if passing data into database successful
        int status = DaoBook.save(ubook);
        if(status>0){
            out.println("<script type='text/javascript'>");
            out.println("alert('Book request successfully sent! Please wait for approval!')");
            out.println("location = 'processViewStatus'");
            out.println("</script>");
        }
        else{
            out.println("<script type='text/javascript'>");
            out.println("alert('Something went wrong! Please retry later!')");
            out.println("location = 'lect/bookBus.jsp'");
            out.println("</script>");
        }
        
        try {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processBooking</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processBooking at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>"); */
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
