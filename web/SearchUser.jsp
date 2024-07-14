<%-- 
    Document   : SearchUser
    Created on : Mar 11, 2024, 1:55:23 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Search User</title>
        <style>
            .menu{
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .logo-container {
                display: flex;
                justify-content: space-between;
                align-items: center;
                margin-bottom: 20px;
            }
            #homepage img {
                width: 100px;
                height: 100px;
            }
            .button1 {
                float: right;
            }

            .button1 a {
                color: white;
                text-decoration: none;
            }

            .button1 a:hover {
                color: #f2f2f2;
            }
            button {
            background-color: #007bff;
            border: none;
            color: white;
            padding: 10px 20px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            font-size: 16px;
            margin: 4px 2px;
            cursor: pointer;
            border-radius: 5px;
        }

        button:hover {
            background-color: #0056b3;
        }
        </style>
    </head>
    <body>
        <div class="menu">
            <div class="logo-container">
                <form action="LogoServlet" method="POST">
                    <button id="homepage"><img src="img/Logo1.PNG" alt="Logo"/></button>
                </form>
                <form action="LogoServlet" method="GET">
                    <button class="hompage1"id="homepage"><img src="img/Logo2.PNG" alt="Logo"/></button>
                </form>
            </div>
            <div class="button">
                <button class="button1"><a href="caidat.jsp">Setting</a></button>
            </div>
        </div>
        <%
             User x = (User) request.getAttribute("x");
        %>    
        <h2>User found:</h2>
        <h3>ID : <%= x.getId() %> </h3>
        <h3>Role : <%= x.getRole() %> </h3>
        <h3>Phone Number : <%= x.getPhoneNumber() %> </h3>
        <h3>Name : <%= x.getName() %> </h3>
        <h3>Gender : <%= x.getGender() %> </h3>
        <h3>DOB : <%= x.getDOB() %> </h3>
        <h3>UserName : <%= x.getUserName() %> </h3>
        <h3>Password : <%= x.getPassword() %> </h3>
    </body>
</html>