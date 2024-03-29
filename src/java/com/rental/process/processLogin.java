package com.rental.process;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.dao.DaoLogin;
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
public class processLogin extends HttpServlet {

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
        
        //get value from login form
        String un = request.getParameter("username");
        String pw = request.getParameter("password");
        String role = request.getParameter("role");
        
        //check role to perform validation
        switch (role) {
            case "lecturer":
                if(DaoLogin.validateStaff(un, pw)){
                    HttpSession session = request.getSession();
                    session.setAttribute("un", un);
                    session.setAttribute("role", role);
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Login Successful!')");
                    out.println("location = 'lect/dashboardLect.jsp'");
                    out.println("</script>");
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Incorrect username or password!')");
                    out.println("</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.include(request, response);
                }   break;
            case "hepa":
                if(DaoLogin.validateStaff(un, pw)){
                    HttpSession session = request.getSession();
                    session.setAttribute("un", un);
                    session.setAttribute("role", role);
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Login Successful!')");
                    out.println("location = 'hepa/dashboardHepa.jsp'");
                    out.println("</script>");
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Incorrect username or password!')");
                    out.println("</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.include(request, response);
                }   break;
            case "pph":
                if(DaoLogin.validateStaff(un, pw)){
                    HttpSession session = request.getSession();
                    session.setAttribute("un", un);
                    session.setAttribute("role", role);
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Login Successful!')");
                    out.println("location = 'pph/dashboardPph.jsp'");
                    out.println("</script>");
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Incorrect username or password!')");
                    out.println("</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.include(request, response);
                }   break;
            case "driver":
                if(DaoLogin.validateStaff(un, pw)){
                    HttpSession session = request.getSession();
                    session.setAttribute("un", un);
                    session.setAttribute("role", role);                    
                    response.sendRedirect("processVerifyDri");
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Incorrect username or password!')");
                    out.println("</script>");
                    RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                    rd.include(request, response);
                }   break;
            default:
                break;
        }
        
        try {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processLogin</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processLogin at " + request.getContextPath() + "</h1>");
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
