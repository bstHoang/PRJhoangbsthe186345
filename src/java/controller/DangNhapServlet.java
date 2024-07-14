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
import model.*;

/**
 *
 * @author admin
 */
@WebServlet(name = "DangNhapServlet", urlPatterns = {"/DangNhapServlet"})
public class DangNhapServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter pr = response.getWriter();

        String xName = request.getParameter("account");
        String xPass = request.getParameter("password");
        User x;

        UserDAO t = new UserDAO();
        x = t.getUser(xName, xPass);
        HttpSession session=request.getSession();
        session.setAttribute("currUser", x);
//       request.getSession().invalidate();
        String logResult = "";
        if (x == null) {
            pr.print("Your user name or password is not invalid");
            request.getRequestDispatcher("dang_nhap.jsp").include(request, response);
        } else {
            
            request.getRequestDispatcher("dangnhapthanhcong.html").forward(request, response);
        }
        
    }

}
