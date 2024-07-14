<%-- 
    Document   : UpdateUserIn4
    Created on : Mar 10, 2024, 8:51:22 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update user information</title>
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

            form {
                max-width: 400px;
                margin:  auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            form p {
                margin-bottom: 15px;
            }

            form input[type="text"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            form input[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                border: none;
                color: #fff;
                border-radius: 4px;
                cursor: pointer;
            }

            form input[type="submit"]:hover {
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
       if(x==null) return;
        %>
        <form action="updateuserin4" method="POST">
            <p><input type="text" name="ID" value="<%= x.getId() %>" readonly required="" /> 
            <p><input type="text" name="Role" value="<%= x.getRole() %>"required=""/> 
            <p><input type="text" name="PhoneNumber" value="<%= x.getPhoneNumber() %>"required=""/> 
            <p><input type="text" name="Name" value="<%= x.getName() %>"required=""/> 
            <p><input type="text" name="Gender" value="<%= x.getGender() %>"required=""/> 
            <p><input type="text" name="DOB" value="<%= x.getDOB() %>"required=""/> 
            <p><input type="text" name="UserName" value="<%= x.getUserName() %>"required=""/> 
            <p><input type="text" name="Password" value="<%= x.getPassword() %>"required=""/> 
            <p><input type="submit" value="Update"> 
        </form>  
    </body>
</html>
