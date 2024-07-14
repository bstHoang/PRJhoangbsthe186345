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
import model.User;
import model.UserDAO;

/**
 *
 * @author admin
 */
@WebServlet(name = "UpdateUserIn4Servlet", urlPatterns = {"/updateuserin4"})
public class UpdateUserIn4Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();

        String xID = request.getParameter("ID");
        int ID = Integer.parseInt(xID);

        UserDAO u = new UserDAO();
        User x = u.getUser(ID);

        if (x == null) {
            pr.println("<h2> A User is not found</h2>");
            request.getRequestDispatcher("UpdateUserIn4.html").include(request, response);
        } else {
            request.setAttribute("x", x);
            request.getRequestDispatcher("UpdateUserIn4.jsp").forward(request, response);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        
        
        String xId ,xRole,PhoneNumber,Name,Gender,DOB,UserName,Password;
        int Id , Role;
        
        xId = request.getParameter("ID");
        xRole = request.getParameter("Role");
        Id =Integer.parseInt(xId);
        Role =Integer.parseInt(xRole);
        PhoneNumber =request.getParameter("PhoneNumber");
        Name = request.getParameter("Name");
        Gender = request.getParameter("Gender");
        DOB = request.getParameter("DOB");
        UserName = request.getParameter("UserName");
        Password = request.getParameter("Password");
        
        User x = new User(Id,Role,PhoneNumber,Name,Gender,DOB,UserName,Password);
        
        request.setAttribute("x", x);
        request.getRequestDispatcher("UpdateNoti.html").forward(request, response);
           
        
        UserDAO u = new UserDAO();
        u.update(Id, x);
        response.sendRedirect("CusList.jsp");
    }

}
