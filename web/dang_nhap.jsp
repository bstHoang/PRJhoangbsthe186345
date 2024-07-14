<%-- 
    Document   : dang_nhap
    Created on : Mar 5, 2024, 4:14:36 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Log in</title>
        <style>

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
            .container {
                width: 400px;
                margin: 0 auto;
                padding: 20px;
                background-color: #f5f5f5;
                border-radius: 5px;
                box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            }

            .form-group {
                margin-bottom: 20px;
            }

            label {
                display: block;
                margin-bottom: 5px;
            }

            input[type="text"],
            input[type="password"] {
                width: 100%;
                padding: 10px;
                border: 1px solid #ccc;
                border-radius: 4px;
                box-sizing: border-box;
            }

            button[type="submit"] {
                width: 100%;
                padding: 10px;
                background-color: #007bff;
                border: none;
                color: #fff;
                border-radius: 4px;
                cursor: pointer;
            }

            button[type="submit"]:hover {
                background-color: #0056b3;
            }

            .baoloi p {
                color: red;
            }

        </style>
    </head>
    <body>
        <form action="LogoServlet" method="POST">
            <button id="homepage"><img src="img/Logo1.PNG" alt="Logo"/></button>
        </form>
        

        <div class="container">
            <form action="DangNhapServlet" method="POST">
                <div class="baoloi">
                    <p>${error}</p>
                </div>
                <div class="form-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="account" value="">
                </div>

                <div class="form-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" value="">
                </div>
                <div class="form-group">
                    <button type="submit">Login</button>
                </div>
            </form>
        </div>
    </body>

</html>
