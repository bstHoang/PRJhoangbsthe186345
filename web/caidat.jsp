<%-- 
    Document   : caidat
    Created on : Mar 7, 2024, 5:02:26 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Setting</title>
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
            .navigation {
                background-color: #f0f0f0; /* Màu nền */
                padding: 20px; /* Khoảng cách giữa các nút */
                border-radius: 5px; /* Bo tròn các góc */
            }

            .navigation a {
                text-decoration: none; /* Không gạch chân cho liên kết */
                color: #333; /* Màu văn bản */
                display: block; /* Hiển thị liên kết dưới dạng khối */
                margin-bottom: 10px; /* Khoảng cách giữa các liên kết */
            }

            .navigation a:hover {
                color: #000; /* Màu văn bản khi di chuột qua */
            }
            .navigation .button {
                background-color: #007bff; /* Màu nền nút */
                color: #fff; /* Màu văn bản nút */
                border: none; /* Không viền */
                border-radius: 5px; /* Bo tròn các góc */
                padding: 10px 20px; /* Kích thước nút */
                cursor: pointer; /* Con trỏ khi di chuột qua nút */
            }

            .navigation .button:hover {
                background-color: #0056b3; /* Màu nền nút khi di chuột qua */
            }
        </style>
    </head>
    <body>
        <form action="LogoServlet" method="POST">
            <button id="homepage"><img src="img/Logo1.PNG" alt="Logo"/></button>
        </form>
        <div class="navigation">
            <p><a href="thaydoithongtintaikhoan.jsp">Change information</a>
            <p><a href="TransactionHistory.jsp">Transaction history</a>
            <p><a href="Web4AD.jsp">Website for Admin</a>
            <form action="LogOutt" method="POST">
                <button type="submit" class="button">Log out</button> 
            </form>
        </div>
    </body>
</html>
