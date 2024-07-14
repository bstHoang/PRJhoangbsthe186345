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
import jakarta.servlet.http.HttpSession;
import java.text.SimpleDateFormat;
import model.*;

/**
 *
 * @author admin
 */
@WebServlet(name = "ClothesIn4Servlet", urlPatterns = {"/clothesin4"})
public class ClothesIn4Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();

        Clothes x = new Clothes();
        ClothesDAO u = new ClothesDAO();

        String xID = request.getParameter("ID");
        int ID = Integer.parseInt(xID);

        HttpSession session = request.getSession();
        if (session.getAttribute("currUser") != null) {
            request.setAttribute("x", u.getClothe(ID));
            request.getRequestDispatcher("ClothesIn4.jsp").forward(request, response);
        } else {
            pr.print("<h2>Please log in before buy</h2>");
            request.getRequestDispatcher("dang_nhap.jsp").include(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();

        HttpSession session = request.getSession();
        User x = (User) session.getAttribute("currUser");

        int UserID, ClothesID, Quantity;
        float Price, total;
        String OrderDate, NameClothes, xClothesID, xPrice, xQuantity, xtotal;

        java.util.Date date = new java.util.Date();
        SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        OrderDate = formatter.format(date);

        NameClothes = request.getParameter("Name");
        xClothesID = request.getParameter("ID");
        ClothesID = Integer.parseInt(xClothesID);
        xPrice = request.getParameter("tien");
        Price = Float.parseFloat(xPrice);
        xQuantity = request.getParameter("Quantity");
        Quantity = Integer.parseInt(xQuantity);
        total = Quantity * Price;
        UserID = x.getId();

        ClothesDAO clothesDAO = new ClothesDAO();
        Clothes getClothes = clothesDAO.getClothe(ClothesID);
        if (getClothes.getQuantity() < Quantity) {
            pr.print("The quantity you want is larger than in stock");
            request.getRequestDispatcher("ClothesIn4.jsp").include(request, response);
        } else {
            int newQuantity = getClothes.getQuantity() - Quantity;
            getClothes.setQuantity(newQuantity);
            clothesDAO.update(getClothes.getID(), getClothes);
            
            OrderDAO u = new OrderDAO();
            Order t = new Order(UserID, ClothesID, Quantity, Price, total, OrderDate, NameClothes);
            u.insert(t);

            request.getRequestDispatcher("BuySuccessful.html").forward(request, response);
        }
    }

}
