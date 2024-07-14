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
@WebServlet(name = "InsertClothesServlet", urlPatterns = {"/addclothes"})
public class InsertClothesServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();

        int Quantity;
        String xQuantity,xPrice,Name, Description, Image;
        float Price;
        
        xQuantity = request.getParameter("Quantity");
        xPrice = request.getParameter("Price");
        Name = request.getParameter("Name");
        Description = request.getParameter("Description");
        Image = request.getParameter("Image");
        
        Quantity = Integer.parseInt(xQuantity);
        Price = Float.parseFloat(xPrice);
        
        ClothesDAO u = new ClothesDAO();
        
        Clothes x = u.getClothe(Name);
        if (x != null) {
            pr.print("<h3> The Name " + Name + " already exists!");
            request.getRequestDispatcher("InsertClothes.jsp").include(request, response);
            return;
        }
        
        Clothes t = u.getClothess(Image);
        if (t != null) {
            pr.print("<h3> The Image " + Image + " already exists!");
            request.getRequestDispatcher("InsertClothes.jsp").include(request, response);
            return;
        }
        
        x = new Clothes(Quantity,Name,Description,Image,Price);
        u.insert(x);
        request.getRequestDispatcher("InsertSuccessful.html").forward(request, response);
    }

}
