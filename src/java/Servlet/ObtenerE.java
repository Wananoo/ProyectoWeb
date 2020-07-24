/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import Modelo.Consultas;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author wanan
 */
@WebServlet(name = "ObtenerE", urlPatterns = {"/ObtenerE"})
public class ObtenerE extends HttpServlet {

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
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet ObtenerE</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet ObtenerE at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
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
        Consultas cons = new Consultas();
        String Herr = request.getParameter("Herr");
        ArrayList<String> Desc = new ArrayList<String>();
        Desc.add("");Desc.add("");
        try {
            Desc = cons.GetHerr(Herr);
        } catch (SQLException ex) {
            Desc.clear();Desc.add("catch");Desc.add("catch");
            Logger.getLogger(ObtenerL.class.getName()).log(Level.SEVERE, null, ex);
        }
        request.setAttribute("Herramienta",Desc.get(0));
        request.setAttribute("Enlace",Desc.get(1));
        request.setAttribute("Descripcion",Desc.get(2).replaceAll("\\.\\s?", "<br>"));
        request.setAttribute("ComoUsar",Desc.get(3).replaceAll("\\. \\s?", "<br>"));
        request.setAttribute("Tips",Desc.get(4).replaceAll("\\.\\s?", "<br>"));
        request.getRequestDispatcher("Herramientas.jsp").forward(request, response);
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
