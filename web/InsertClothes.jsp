<%-- 
    Document   : InsertClothes
    Created on : Mar 12, 2024, 1:09:05 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Insert Clothes</title>
        <style>
            img{
                width: 100px;
                height: 100px;
            }

            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
                background-color: #f9f9f9;
            }

            .menu {
                background-color: #333;
                color: white;
                padding: 10px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }

            .logo-container {
                display: flex;
                align-items: center;
            }

            .logo-container button {
                background-color: transparent;
                border: none;
                cursor: pointer;
                margin-right: 10px;
            }

            .button {
                margin-right: 10px;
            }

            .text1 {
                max-width: 600px;
                margin: 50px auto;
                padding: 20px;
                background-color: #fff;
                border-radius: 10px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .text1 p {
                margin-bottom: 20px;
            }

            .text1 input[type="text"] {
                width: calc(100% - 10px);
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
                box-sizing: border-box;
            }

            .text1 button[type="submit"] {
                background-color: #007bff;
                color: white;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
            }

            .text1 button[type="submit"]:hover {
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

        <form class="text1"action="addclothes" method="POST">
            <p>
                Name: <input type="text" name="Name" value="" required="">
            </p>
            <p>
                Quantity: <input type="text" name="Quantity" value="" required="">
            </p>
            <p>
                Description: <input type="text" name="Description" value="" required="">
            </p>
            <p>
                Image: <input type="text" name="Image" value="" required="">
            </p>
            <p>
                Price: <input type="text" name="Price" value="" required="">
            </p>
            <p>
                <button type="submit">Add new clothes</button>
            </p>
        </form>
    </body>
</html>
