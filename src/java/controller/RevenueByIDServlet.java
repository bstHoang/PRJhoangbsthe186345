/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.*;
import model.*;
/**
 *
 * @author admin
 */
@WebServlet(name="RevenueByIDServlet", urlPatterns={"/revenuebyIDservlet"})
public class RevenueByIDServlet extends HttpServlet {
   

   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        
        String xID = request.getParameter("ID");
        int ID =Integer.parseInt(xID);
        
        OrderDAO u = new OrderDAO();
        List<Order> ListID =  u.getOrder(ID);
        
        if(ListID == null) {
           pr.println("<h2> A User is not found</h2>"+ListID);
           request.getRequestDispatcher("RevenueByID.html").include(request, response);
        }
        else {
        request.setAttribute("ListID", ListID);
        request.getRequestDispatcher("RevenueByID.jsp").forward(request, response);
        }

    }

}
