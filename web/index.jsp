<%-- 
    Document   : index
    Created on : Feb 25, 2024, 8:46:46 AM
    Author     : admin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>

<!DOCTYPE html>
<%
    ClothesDAO cD = new ClothesDAO();
    List<Clothes> clothesList = request.getParameter("search") == null? cD.getClothes() : cD.getClothes(request.getParameter("search"));
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hoang's Shop</title>
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
        </style>
    </head>
    <body>
        <div class="menu">
            <form action="LogoServlet" method="POST">
                <button id="homepage"><img src="img/Logo1.PNG" alt="Logo"/></button>
            </form>

            <div class="search">
                <form action="SearchServlet" method="POST" accept-charset="UTF-8"> 
                    <input class="search_button" type="text" placeholder="Search..." name="search">
                    <button type="submit">Search</button>
                </form>
            </div>

            <% if (session.getAttribute("currUser") == null) {%>
            <div class="button">
                <button class="button1"><a href="dang_nhap.jsp">Log in</a></button>
                <button class="button1"><a href="dang_ki.jsp">Register</a></button>
            </div>
            <%} else {%>
            <button class="button1"> Username:
                <% 
                    User currentUser = (User) session.getAttribute("currUser");
                    out.print(currentUser.getUserName());
                %>
            </button>
            <div class="button">
                <button class="button1"><a href="caidat.jsp">Setting</a></button>
            </div>

            <%}%>
        </div>

        <table class="table" border='1'>
            <tr>
                <!--<td> ID </td>-->
                <td> Name </td>
                <td> Price </td>
                <td> Quantity </td>
                <td> Description </td>
                <td> Image </td>
            </tr>
            <%
              for(Clothes x: clothesList) {
              if(x.getQuantity() > 0){
            %>
            <tr>
                <!--<td><%= x.getID() %> </td>-->
                <td><%= x.getName() %> </td>
                <td><%= x.getPrice() %> Dollar</td>
                <td><%= x.getQuantity() %> </td>
                <td><%= x.getDescription() %> </td>
                <td>
                    <img class="product_image" src="img/<%= x.getImage()%>" alt="Product Image">
                </td>
                <td><button class="button1"><a href="clothesin4?ID=<%=x.getID() %>">  Buy    </a> </button></td>
            </tr>  
            <%  }
                } %>   
        </table>

    </body>
</html>
