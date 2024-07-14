<%-- 
    Document   : UpdateClothes
    Created on : Mar 12, 2024, 4:02:18 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update clothes</title>
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
            .form-container {
                max-width: 500px;
                margin: auto;
                padding: 20px;
                padding-right: 40px;
                background-color: #f2f2f2;
                border-radius: 10px;
                box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            }

            .form-container p {
                margin-bottom: 15px;
            }

            .form-container input[type="text"],
            .form-container input[type="submit"] {
                width: 100%;
                padding: 10px;
                margin-bottom: 10px;
                border: 1px solid #ccc;
                border-radius: 5px;
            }

            .form-container input[type="submit"] {
                background-color: #007bff;
                color: white;
                cursor: pointer;
            }

            .form-container input[type="submit"]:hover {
                background-color: #0056b3;
            }

            /* Tùy chỉnh cho các input readonly */
            .form-container input[readonly] {
                background-color: #ddd;
                cursor: not-allowed;
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
      Clothes x = (Clothes) request.getAttribute("x");
      if(x==null || x.getQuantity() <30) {
        %>
        <div class="form-container">
            <form action="updateclothesID" method="POST">
                <p>ID : <input type="text" name="ID" value="<%= x.getID() %>"  readonly="" required="" /> </p>
                <p>Name : <input type="text" name="Name" value="<%= x.getName() %>" required=""/> </p>
                <p>Price :<input type="text" name="Price" value="<%= x.getPrice() %>" required=""/> </p>
                <p>Quantity : <input type="text" name="Quantity" value="<%= x.getQuantity()%>" required=""/> </p>
                <p>Description : <input type="text" name="Description" value="abcd" required=""/></p>
                <p>Image : <input type="text" name="Image" value="<%= x.getImage() %>"  required="" /> </p>
                <p><input type="submit" value="Update"></p>
                <% }%>
            </form>
        </div> 
    </body>
</html>
