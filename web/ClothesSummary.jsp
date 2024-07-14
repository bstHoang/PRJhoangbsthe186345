<%-- 
    Document   : ClothesSummary
    Created on : Mar 14, 2024, 9:54:31 AM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<%
    ClothesDAO clothesDAO = new ClothesDAO();
    List<Clothes> ClothesList = clothesDAO.getClothes();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Clothes Summary</title>
        <style>
            img{
                width: 150px;
            }
            .button2{
                padding: 20px;
                background-color:#007bff;
                border-radius: 10px ;
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
                <td> ID </td>
                <td> Name </td>
                <td> Price </td>
                <td> Quantity </td>
                <td> Description </td>
                <td> Image </td>
                <td  colspan="2" align="center"> <a href="InsertClothes.jsp"/> Insert </a> </td>
            </tr>
            <%
                for(Clothes x : ClothesList) {
            %>
            <tr>
                <td><%= x.getID() %> </td>
                <td><%= x.getName() %> </td>
                <td><%= x.getPrice() %> Dolar</td>
                <td><%= x.getQuantity() %> </td>
                <td><%= x.getDescription() %> </td>
                <td>
                    <img class="product_image" src="img/<%= x.getImage()%>" alt="Product Image">
                </td>

                <td><a href="updateclothesID?ID=<%=x.getID() %>">  Edit </a> </td>
                <td><a href="delclothesid?ID=<%=x.getID() %>">  Delete </a> </td>
            </tr>  
            <%  } %>  
        </table>>
    </body>
</html>
