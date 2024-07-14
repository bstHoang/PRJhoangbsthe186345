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
@WebServlet(name = "ChangeIn4Servlet", urlPatterns = {"/changein4"})
public class ChangeIn4Servlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        User currUser = (User) request.getSession().getAttribute("currUser");
        // Lấy thông tin từ form
        String phoneNumber = request.getParameter("phone_number");
        String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String DOB = request.getParameter("date_of_birth");
        String username = request.getParameter("user_name");
        String password = request.getParameter("password");
        String ID = request.getParameter("ID");
        UserDAO t = new UserDAO();

        t.updateprofile(name, gender, DOB, phoneNumber, username, password, ID);
        currUser.setUserName(username);
        

        request.getSession().setAttribute("currUser", currUser);
        request.getRequestDispatcher("changein4successfull.html").forward(request, response);
    }

}
