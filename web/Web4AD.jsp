<%-- 
    Document   : Web4AD
    Created on : Mar 9, 2024, 1:36:44 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Server</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous"><!-- comment -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-YvpcrYf0tY3lHB60NNkmXc5s9fDVZLESaAA55NDzOxhy9GkcIdslK1eN7N6jIeHz" crossorigin="anonymous"></script>
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
            User x = (User) session.getAttribute("currUser");        
        %>
        <%if(x==null || x.getRole()!=0){%>
        <p> Only Admin can access this page! 
            <% return;} 
        else {%>
        <div class="container">
            <div class="row">
                <div class="col-md-6" >
                    <button class="button2" ><a href="SearchUser.html">Search customer by ID</a></button><br>
                    <button class="button2"><a href="CusList.jsp">Customer's List </a></button><br>
                    <button class="button2"><a href="dang_ki.jsp">Add an other customer</a></button><br>
                    <button class="button2"><a href="DelCusID.html">Delete customer by ID</a></button><br>
                    <button class="button2"><a href="UpdateUserIn4.html">Update user information by ID</a></button><br>
                    <button class="button2"><a href="UserSummary.jsp">User summary</a></button><br>
                    <button class="button2"><a href="SortUser.html">Sort User</a></button><br>
                </div>
                <div class="col-md-6">
                    <button class="button2"><a href="ClothesList.jsp">Clothes's List </a></button><br>
                    <button class="button2"><a href="InsertClothes.jsp">Insert clothes </a></button><br>
                    <button class="button2"><a href="DeleteClothesID.html">Delete clothes by ID</a></button><br>
                    <button class="button2"><a href="UpdateClothesID.html">Update clothes by ID</a></button><br>            
                    <button class="button2"><a href="ClothesSummary.jsp">Clothes Summary</a></button><br>
                    <button class="button2"><a href="Revenue.jsp">Revenue</a></button><br>
                    <button class="button2"><a href="RevenueByID.html">Revenue By ID User</a></button><br>
                </div>
            </div>
        </div>
        <% }%>
    </body>
</html>
