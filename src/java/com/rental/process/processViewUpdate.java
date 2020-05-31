package com.rental.process;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
import com.rental.dao.DaoDriver;
import com.rental.user.userStaff;
import com.rental.dao.DaoStaff;
import com.rental.user.userDriver;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Reo
 */
public class processViewUpdate extends HttpServlet {

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

        HttpSession session = request.getSession(false);
        String currentUser = (String) session.getAttribute("un");
        String currentRole = (String) session.getAttribute("role");

        if (currentRole.equals("driver")) {
            userDriver dri = DaoDriver.getDriver(currentUser);

            request.setAttribute("username", currentUser);
            request.setAttribute("name", dri.getFname());
            request.setAttribute("role", dri.getRole());
            request.setAttribute("cap", dri.getCap());
            RequestDispatcher rd = request.getRequestDispatcher("driver/viewUpdatePass.jsp");
            if (rd != null) {
                rd.forward(request, response);
            }
        } else if (currentRole.equals("pph")) {
            userStaff staff = DaoStaff.getUser(currentUser);

            request.setAttribute("username", staff.getUsername());
            request.setAttribute("name", staff.getName());
            request.setAttribute("role", staff.getRole());

            RequestDispatcher rd = request.getRequestDispatcher("pph/viewUpdatePass.jsp");
            if (rd != null) {
                rd.forward(request, response);
            }
        } else if (currentRole.equals("hepa")) {
            userStaff staff = DaoStaff.getUser(currentUser);

            request.setAttribute("username", staff.getUsername());
            request.setAttribute("name", staff.getName());
            request.setAttribute("role", staff.getRole());

            RequestDispatcher rd = request.getRequestDispatcher("hepa/viewUpdatePass.jsp");
            if (rd != null) {
                rd.forward(request, response);
            }
        } else if (currentRole.equals("lecturer")) {
            userStaff staff = DaoStaff.getUser(currentUser);

            request.setAttribute("username", staff.getUsername());
            request.setAttribute("name", staff.getName());
            request.setAttribute("role", staff.getRole());

            RequestDispatcher rd = request.getRequestDispatcher("lect/viewUpdatePass.jsp");
            if (rd != null) {
                rd.forward(request, response);
            }
        }

        try {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processViewUpdate</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processViewUpdate at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>"); */
        } finally {
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
