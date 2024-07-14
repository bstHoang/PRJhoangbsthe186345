<%-- 
    Document   : Revenue
    Created on : Mar 15, 2024, 8:29:56 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<%
    OrderDAO orderDAO = new OrderDAO();
    List<Order> orderList = orderDAO.getOrders();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Revenue</title>
        <style>
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
                <td>User ID</td>
                <td>Clothes ID</td>
                <td>Clothes Name</td>
                <td>Price</td>
                <td>Quantity</td>
                <td>Order date</td>
                <td>Total</td>
            </tr>
            <% for (Order x : orderList) {
            %>
            <tr>
                <td><%=x.getUserID()%></td>
                <td><%=x.getClothesID()%></td>
                <td><%=x.getNameClothes()%></td>
                <td><%=x.getPrice()%></td>
                <td><%=x.getQuantity()%></td>
                <td><%=x.getOrderDate()%></td>
                <td><%=x.getTotal()%></td>
            </tr>
            <% }
            %>
        </table>
    </body>
    <%
    double totalRevenue = 0;
    for (Order x : orderList) {
        totalRevenue += x.getTotal();
    }
    %>

    <p>Revenue: <%= totalRevenue %></p>
</html>
