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
@WebServlet(name = "RegisterServlet", urlPatterns = {"/register"})
public class RegisterServlet extends HttpServlet {

    //
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();
        
        int xRole;
        String xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword;
        
        String xxRole = request.getParameter("role");
        xRole = Integer.parseInt(xxRole);
        xDOB = request.getParameter("dob");
        xName = request.getParameter("name");
        xPhoneNumber = request.getParameter("phone_number");
        xGender = request.getParameter("gender");
        xPassword = request.getParameter("password");
        xUserName = request.getParameter("username");
        xPhoneNumber = xPhoneNumber.trim();

        UserDAO u = new UserDAO();
        
        User x = u.getUser(xPhoneNumber);
        if (x != null) {
            pr.print("<h3> The phone number " + xPhoneNumber + " already exists!");
            request.getRequestDispatcher("dang_ki.jsp").include(request, response);
            return;
        }
        
        User t = u.getUser(xUserName);
        if (t != null) {
            pr.print("<h3> The User Name " + xUserName + " already exists!");
            request.getRequestDispatcher("dang_ki.jsp").include(request, response);
            return;
        }

        x = new User(xRole,xPhoneNumber, xName, xGender, xDOB, xUserName, xPassword);
        u.insert(x);
        request.getRequestDispatcher("thong_bao.html").forward(request, response);
    }

}
