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
@WebServlet(name="DelClothesID", urlPatterns={"/delclothesid"})
public class DelClothesID extends HttpServlet {
   

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        
        String xID = request.getParameter("ID");
        
        int ID = Integer.parseInt(xID);
        
        ClothesDAO u = new ClothesDAO();
        Clothes x = u.getClothe(ID);
        u.delete(ID);
        
        List<Clothes> lst = u.getClothes();
        
        request.setAttribute("lst", lst);
        request.getRequestDispatcher("DeleteSuccessfull.html").forward(request, response);
    } 

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        
        String xID = request.getParameter("ID");
        int ID =Integer.parseInt(xID);
        
        ClothesDAO u = new ClothesDAO();
        Clothes x = u.getClothe(ID);
        
        if(x==null) {
           pr.println("<h2> A Clothes is not found</h2>");
           request.getRequestDispatcher("DeleteClothesID.html").include(request, response);
        }
        else {
        request.setAttribute("x", x);
        request.getRequestDispatcher("DeleteClothesID.jsp").forward(request, response);
        }
    }

}
