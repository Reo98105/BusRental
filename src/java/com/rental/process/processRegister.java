package com.rental.process;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import com.rental.dao.DaoDriver;
import com.rental.user.userStaff;
import com.rental.user.userDriver;
import com.rental.dao.DaoStaff;
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
public class processRegister extends HttpServlet {

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
        
        //get registration info from registration form
        String name = request.getParameter("fullname");
        String un = request.getParameter("username");
        String pw = request.getParameter("password");
        String role = request.getParameter("role");
        
        //set lecturer, HEPA, PPH info
        userStaff staff = new userStaff();
        staff.setName(name);
        staff.setUsername(un);
        staff.setPassword(pw);
        staff.setRole(role);
        
        //set driver info
        userDriver dri = new userDriver();
        dri.setName(name);
        dri.setUsername(un);
        dri.setPassword(pw);
        dri.setRole(role);
        
        //save into database by checking role first
        switch (role) {
            case "Driver":
                {
                    int status = DaoStaff.save(staff);
                    if(status>0){
                        int statusDri = DaoDriver.saveDri();  //save driver's userID into driver table
                        if(statusDri > 0){
                            out.println("<script type='text/javascript'>");
                            out.println("alert('Successfully registered!')");
                            out.println("location = 'login.jsp'");
                            out.println("</script>"); 
                        }
                        else{
                            out.println("<script type='text/javascript'>");
                            out.println("alert('Something went wrong when registering, contact admin for more info!')");
                            out.println("location = 'login.jsp'");
                            out.println("</script>");
                        }                        
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert(Incorrect username or password!)");
                        out.println("location = 'register.jsp'");
                        out.println("</script>");
                    }       break;
                }
            case "Lecturer":
                {
                    int status = DaoStaff.save(staff);
                    if(status>0){
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Successfully registered!')");
                        out.println("location = 'login.jsp'");
                        out.println("</script>");
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert(Incorrect username or password!)");
                        out.println("location = 'register.jsp'");
                        out.println("</script>");
                    }       break;
                }
            case "HEPA Staff":
                {
                    int status = DaoStaff.save(staff);
                    if(status>0){
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Successfully registered!')");
                        out.println("location = 'login.jsp'");
                        out.println("</script>");
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert(Incorrect username or password!)");
                        out.println("location = 'register.jsp'");
                        out.println("</script>");
                    }       break;
                }
            case "PPH Staff":
                {
                    int status = DaoStaff.save(staff);
                    if(status>0){
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Successfully registered!')");
                        out.println("location = 'login.jsp'");
                        out.println("</script>");
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert(Incorrect username or password!)");
                        out.println("location = 'register.jsp'");
                        out.println("</script>");
                    }       break;
                }
            default:
                break;
        }
        
        try {
            /* TODO output your page here. You may use following sample code.
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processRegister</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processRegister at " + request.getContextPath() + "</h1>");
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
