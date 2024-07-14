<%-- 
    Document   : UserSummary
    Created on : Mar 11, 2024, 2:53:12 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import = "model.*" %>
<%@page import = "java.util.*" %>
<!DOCTYPE html>
<%
    UserDAO userDAO = new UserDAO();
    List<User> UserList = userDAO.getUsers();
%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>User Summary</title>
        <style>
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
            /* Căn giữa nội dung trong các ô của bảng */
            table {
                border-collapse: collapse;
                width: 100%;
            }

            table, th, td {
                border: 1px solid black;
                text-align: center;
            }

            /* Phần đầu của bảng */
            th {
                background-color: #f2f2f2;
            }

            /* Màu nền của hàng chẵn */
            tr:nth-child(even) {
                background-color: #f2f2f2;
            }

            /* Màu nền của hàng lẻ */
            tr:nth-child(odd) {
                background-color: #ffffff;
            }

            /* Định dạng cho nút Insert */
            td[colspan="2"] {
                text-align: center;
            }

            td[colspan="2"] a {
                display: block; /* Hiển thị nút Insert dưới dạng khối */
                width: 80px; /* Chiều rộng của nút Insert */
                padding: 8px; /* Khoảng cách giữa nút và đường biên của ô */
                text-decoration: none; /* Loại bỏ gạch chân */
                color: black; /* Màu chữ */
                border-radius: 5px; /* Độ cong của góc */
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
        <p> <a href="SearchUser.html"/> Search </a>
    <table border="1">
        <tr>
            <td> ID </td>
            <td> Role </td>
            <td> Phone Number </td>
            <td> Full Name </td>
            <td> Gender </td>
            <td> Date of birth </td>
            <td> User name </td>
            <td> Password </td>
            <td  colspan="2" align="center"> <a href="dang_ki.jsp"/> Insert </a> </td>
        </tr>
        <%
            for(User x : UserList) {
        %>
        <tr>
            <td><%= x.getId() %> </td>
            <td><%= x.getRole() %> </td>
            <td><%= x.getPhoneNumber() %> </td>
            <td><%= x.getName() %> </td>
            <td><%= x.getGender() %> </td>
            <td><%= x.getDOB() %> </td>
            <td><%= x.getUserName() %> </td>
            <td><%= x.getPassword() %> </td>
            <td><a href="updateuserin4?ID=<%=x.getId() %>">  Edit </a> </td>
            <td><a href="delcusid?ID=<%=x.getId() %>">  Delete </a> </td>

        </tr>  
        <%  } %>  
    </table>    
</body>
</html>
