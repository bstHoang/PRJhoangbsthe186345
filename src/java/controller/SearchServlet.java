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
@WebServlet(name="SearchServlet", urlPatterns={"/SearchServlet"})
public class SearchServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        
        String xID = request.getParameter("ID");
        int ID = Integer.parseInt(xID);
        
        UserDAO u = new UserDAO();
        User x = u.getUser(ID);
        
        if(x == null) {
           pr.println("<h2> A User is not found</h2>");
           request.getRequestDispatcher("SearchUser.html").include(request, response);
        }
        else {
        request.setAttribute("x", x);
        request.getRequestDispatcher("SearchUser.jsp").forward(request, response);
        }
    } 

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        PrintWriter out = response.getWriter();
        
        String searchName = request.getParameter("search").trim(); 
        ClothesDAO clothesDAO = new ClothesDAO(); 
        
        List<Clothes> searchResults = clothesDAO.getClothes(searchName); 
        
        request.setAttribute("searchResults", searchResults); 
        request.getRequestDispatcher("index.jsp").forward(request, response); 


    }

   
}
