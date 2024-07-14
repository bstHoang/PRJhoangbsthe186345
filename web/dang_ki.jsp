<%-- 
    Document   : dang_ki
    Created on : Mar 10, 2024, 10:04:01 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>

<!DOCTYPE html>
<!DOCTYPE html>
<html>
    <head>
        <title>Register</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
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
                margin: auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }
            .text1 {
                max-width: 400px;
                margin: 20px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            form p {
                margin-bottom: 15px;
            }

            form input[type="text"],
            form input[type="password"],
            form input[type="date"] {
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
            </div>
            <div class="button">
                <button class="button1"><a href="caidat.jsp">Setting</a></button>
            </div>
        </div>
        <form class="text1"action="register" method="POST">
            <p>
                Full name: <input type="text" name="name" value="" required="">
            </p>
            <input name="role" value="0" type="hidden" >
            <p>
                Gender: <input type="text" name="gender" value="" required="">
            </p>
            <p>
                Date of birth: <input type="date" name="dob" value="" required="">
            </p>
            <p>
                Phone number: <input type="text" name="phone_number" value="" required="">
            </p>
            <p>
                User Name: <input type="text" name="username" value="" required="">
            </p>
            <p>
                Password: <input type="password" name="password" value="" required="">
            </p>
            <p>
                <% User x = (User) session.getAttribute("currUser");%>
                <%if(x==null || x.getRole()!=0){%>
                <button type="submit">Register</button>
                <% return;} 
                else {%>
                <button type="submit">Add new user</button>
                <%} %>
            </p>
        </form>

    </body>
</html>

