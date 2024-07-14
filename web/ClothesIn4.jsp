<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="model.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<%
           Clothes x = (Clothes) request.getAttribute("x");
           if(x==null) return;
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clothes information</title>
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
            /* Phần form */
            .form1 {
                max-width: 400px;
                margin: 0 auto;
                padding: 20px;
                background-color: #f9f9f9;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            /* Phần tử input */
            .form1 input[type="text"], .form1 input[type="number"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 3px;
                box-sizing: border-box; /* Đảm bảo rằng padding và border không làm thay đổi kích thước của input */
            }

            /* Phần tử ảnh sản phẩm */
            .form1 img.product_image {
                display: block;
                margin: 20px auto;
                max-width: 100%;
                height: auto;
            }

            /* Phần tử button */
            .form1 button[type="submit"] {
                display: block;
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                color: #fff;
                border: none;
                border-radius: 3px;
                cursor: pointer;
                transition: background-color 0.3s ease;
            }

            .form1 button[type="submit"]:hover {
                background-color: #0056b3;
            }


        </style>
        <script>
            function updateTotal() {
                var quantity = document.getElementById("Quantity").value;
                var price = <%= x.getPrice() %>;
                var total = quantity * price;
                document.getElementById("total").value = total;
            }
        </script>
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
        </div >
        <div >
            <form class="form1" action="clothesin4" method="POST">
                <p><input type="hidden" name="ID" value="<%= x.getID() %>"/>
                <p>
                    Name : <input type="text" name="Name" value="<%= x.getName()%>" readonly=""/>
                <p>
                    Price : <input type="text" name="tien" value="<%= x.getPrice()%>" readonly=""/>
                <p>
                    Enter Quantity you want to buy: <input type="text" id="Quantity" name="Quantity" value="" required="" oninput="updateTotal()"/>
                <p>
                    Description : <input type="text" name="Description" value="<%= x.getDescription() %>" readonly=""/>
                <p>
                    total: <input type="text" id="total" name="total" value="" readonly=""/>

                    <img class="product_image" src="img/<%= x.getImage()%>" alt="Product Image">
                    <button type="submit"> Buy</button>
            </form>
        </div>
    </body>
</html>
