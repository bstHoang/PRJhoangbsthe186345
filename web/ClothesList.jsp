<%-- 
    Document   : ClothesList
    Created on : Mar 12, 2024, 9:41:02 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<%
        ClothesDAO clothesDAO = new ClothesDAO();
        List<Clothes> clothesList = clothesDAO.getClothes();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clothes List</title>
        <style>
            body {
                font-family: Arial, sans-serif;
                margin: 0;
                padding: 0;
            }
            .menu {
                background-color: #f1f1f1;
                padding: 10px;
                display: flex;
                justify-content: space-between;
                align-items: center;
            }
            .menu img {
                height: 50px;
                width: auto;
            }
            .search {
                flex: 1;
                margin: 0 20px;
            }
            .search_button {
                padding: 5px;
                width: 200px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }
            .button {
                display: flex;
                gap: 10px;
                margin : 10px;
            }
            .button1 {
                background-color: #4CAF50;
                color: white;
                border: none;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
            }
            .button1 a {
                color: white;
                text-decoration: none;
            }
            .table {
                width: 100%;
                border-collapse: collapse;
            }
            .table th, .table td {
                padding: 8px;
                text-align: left;
            }
            .table tr:nth-child(even) {
                background-color: #f2f2f2;
            }
            .table th {
                background-color: #4CAF50;
                color: white;
            }
            .product_image {
                max-width: 100px;
                height: auto;
            }
            #homepage {
                background: none;
                border: none;
            }
            .button2{
                padding: 20px;
                background-color:#007bff;
                border-radius: 10px ;
            }
            a{
                color: white;
            }
            p{
                margin-bottom: 50px;
            }
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
            .button2 {
                padding: 10px;
                margin-bottom: 10px;
                width: 300px; /* Đặt chiều rộng của các nút */
            }

            .button2 a {
                color: white;
                text-decoration: none;
            }

            .button2 button {
                background-color: #007bff;
                border: none;
                color: white;
                padding: 10px 20px;
                text-align: center;
                text-decoration: none;
                display: inline-block;
                width: 100%; /* Các nút có chiều rộng 100% của lớp cha */
                font-size: 16px;
                cursor: pointer;
                border-radius: 5px;
            }

            .button2 button:hover {
                background-color: #0056b3;
            }
            </style>
    </head>
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
    <body>
        <table border="1">
            <tr>
                <td>ID</td>
                <td>Name</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Description</td>
                <td>Image</td>
            </tr>
            <% for (Clothes x : clothesList) {
                if( x.getQuantity() < 30){
            %>
            <tr>
                <td><%=x.getID()%></td>
                <td><%=x.getName()%></td>
                <td><%=x.getPrice()%></td>
                <td><%=x.getQuantity()%></td>
                <td><%=x.getDescription()%></td>
                <td>
                    <img class="product_image" src="img/<%= x.getImage()%>" alt="Product Image">
                </td>
            </tr>
            <% }
                }%>
        </table>
    </body>
</html>
