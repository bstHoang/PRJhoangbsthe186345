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
import model.*;

/**
 *
 * @author admin
 */
@WebServlet(name="UpdateClothesID", urlPatterns={"/updateclothesID"})
public class UpdateClothesID extends HttpServlet {
   
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();

        String xID = request.getParameter("ID");
        int ID = Integer.parseInt(xID);

        ClothesDAO u = new ClothesDAO();
        Clothes x = u.getClothe(ID);

        if (x == null) {
            pr.println("<h2> A Clothes is not found</h2>");
            request.getRequestDispatcher("UpdateClothes.html").include(request, response);
        } else {
            request.setAttribute("x", x);
            request.getRequestDispatcher("UpdateClothes.jsp").forward(request, response);
        }
    } 

    
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        
        
        int Quantity ,ID;
        String xID,xQuantity,xPrice,Name, Description, Image;
        float Price;
        
        xQuantity = request.getParameter("Quantity");
        xPrice = request.getParameter("Price");
        xID = request.getParameter("ID");
        Name = request.getParameter("Name");
        Description = request.getParameter("Description");
        Image = request.getParameter("Image");
        
        Quantity = Integer.parseInt(xQuantity);
        Quantity = Quantity +10 ; 
        Price = Float.parseFloat(xPrice);
        ID = Integer.parseInt(xID);
        
        Clothes x = new Clothes(Quantity,Name,Description,Image,Price);
        ClothesDAO u = new ClothesDAO();
        u.update(ID, x);
        
        request.setAttribute("x", x);
        request.getRequestDispatcher("UpdateNoti.html").forward(request, response);
       
    }

}
