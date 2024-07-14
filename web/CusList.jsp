<%-- 
    Document   : CusList
    Created on : Mar 9, 2024, 3:16:35 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<%
//         List<User> lst = (List<User>) request.getAttribute("lst");
    UserDAO userDAO = new UserDAO();
    List<User> UserList = userDAO.getUsers();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>List of customer</title>
<style>
    .menu{
        display: flex;
        justify-content: space-between;
        align-items: center;
    }
    .menu homepage1{
        margin-right: 40px; 
    }
        body {
            font-family: Arial, sans-serif;
            background-color: #f5f5f5;
            margin: 0;
            padding: 0;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        th {
            background-color: #007bff;
            color: white;
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

        #homepage img {
            width: 100px;
            height: 100px;
        }
         .logo-container {
        display: flex;
        justify-content: space-between; 
        align-items: center; 
        margin-bottom: 20px; 
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
        <table border="1">
            <tr>
                <td> ID </td>
                <td> Role </td>
                <td> Phone Number </td>
                <td> Full Name </td>
                <td> Gender </td>
                <td> Date of birth </td>
                <td> User name </td>
                <td> Password </td>
            </tr>
            <%
              for(User x : UserList) {
            %>
            <tr>
                <td><%= x.getId() %> </td>
                <td><%= x.getRole() %> </td>
                <td><%= x.getPhoneNumber() %> </td>
                <td><%= x.getName() %> </td>
                <td><%= x.getGender() %> </td>
                <td><%= x.getDOB() %> </td>
                <td><%= x.getUserName() %> </td>
                <td><%= x.getPassword() %> </td>
            </tr>  
            <% } %>  
        </table>     
    </body>
</html>
