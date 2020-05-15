/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.rental.process;

import com.rental.dao.DaoStaff;
import com.rental.user.userStaff;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author Reo
 */
public class processUpdatePass extends HttpServlet {

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
        String un = (String)session.getAttribute("un");
        String role = (String)session.getAttribute("role");
        
        //get value from page
        String currentPw = request.getParameter("current");
        String newPw = request.getParameter("new");
        String rePw = request.getParameter("re");
        
        userStaff pw = DaoStaff.getPassword(un);
        
        if(role.equals("lecturer")){
            if(currentPw.equals(pw.getPassword())){
                if(newPw.equals(rePw)){
                    
                    userStaff staff = new userStaff();
                    staff.setPassword(newPw);
                    staff.setUsername(un);
                    
                    int status = DaoStaff.update(staff);
                    if(status>0){
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Successfully changed password, please re-log!')");
                        out.println("location = '..//processLogout'");
                        out.println("</script>");
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Something went wrong!')");
                        out.println("location = '..//processViewUpdate'");
                        out.println("</script>");
                    }
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Password not same!')");
                    out.println("location = '..//processViewUpdate'");
                    out.println("</script>");
                }
            }
            else{
                out.println("<script type='text/javascript'>");
                out.println("alert('Wrong password!')");
                out.println("location = '..//processViewUpdate'");
                out.println("</script>");            
            }
        }
        else if(role.equals("hepa")){
            if(currentPw.equals(pw.getPassword())){
                if(newPw.equals(rePw)){
                    
                    userStaff staff = new userStaff();
                    staff.setPassword(newPw);
                    staff.setUsername(un);
                    
                    int status = DaoStaff.update(staff);
                    if(status>0){
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Successfully changed password, please re-log!')");
                        out.println("location = '..//processLogout'");
                        out.println("</script>");
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Something went wrong!')");
                        out.println("location = '..//processViewUpdate'");
                        out.println("</script>");
                    }                    
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Password not same!')");
                    out.println("location = '..//processViewUpdate'");
                    out.println("</script>");
                }
            }
            else{
                out.println("<script type='text/javascript'>");
                out.println("alert('Wrong password!')");
                out.println("location = '..//processViewUpdate'");
                out.println("</script>");            
            }
        }
        else if(role.equals("pph")){
            if(currentPw.equals(pw.getPassword())){
                if(newPw.equals(rePw)){
                    
                    userStaff staff = new userStaff();
                    staff.setPassword(newPw);
                    staff.setUsername(un);
                    
                    int status = DaoStaff.update(staff);
                    if(status>0){
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Successfully changed password, please re-log!')");
                        out.println("location = '..//processLogout'");
                        out.println("</script>");
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Something went wrong!')");
                        out.println("location = '..//processViewUpdate'");
                        out.println("</script>");
                    }
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Password not same!')");
                    out.println("location = '..//processViewUpdate'");
                    out.println("</script>");
                }
            }
            else{
                out.println("<script type='text/javascript'>");
                out.println("alert('Wrong password!')");
                out.println("location = '..//processViewUpdate'");
                out.println("</script>");            
            }
        }
        else if(role.equals("driver")){
            if(currentPw.equals(pw.getPassword())){
                if(newPw.equals(rePw)){
                    
                    userStaff staff = new userStaff();
                    staff.setPassword(newPw);
                    staff.setUsername(un);
                    
                    int status = DaoStaff.update(staff);
                    if(status>0){
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Successfully changed password, please re-log!')");
                        out.println("location = '..//processLogout'");
                        out.println("</script>");
                    }
                    else{
                        out.println("<script type='text/javascript'>");
                        out.println("alert('Something went wrong!')");
                        out.println("location = '..//processViewUpdate'");
                        out.println("</script>");
                    }
                }
                else{
                    out.println("<script type='text/javascript'>");
                    out.println("alert('Password not same!')");
                    out.println("location = '..//processViewUpdate'");
                    out.println("</script>");
                }
            }
            else{
                out.println("<script type='text/javascript'>");
                out.println("alert('Wrong password!')");
                out.println("location = '..//processViewUpdate'");
                out.println("</script>");            
            }
        }
                
        try {
            /* TODO output your page here. You may use following sample code. 
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet processUpdatePass</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet processUpdatePass at " + request.getContextPath() + "</h1>");
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
