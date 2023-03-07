<%-- 
    Document   : login
    Created on : Mar 1, 2023, 12:58:33 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        
        <title>Zero Sneaker</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <link rel="shortcut icon" href="img/zero.jpg">
        <link href="https://cdn.lineicons.com/4.0/lineicons.css" rel="stylesheet" />
        <link rel="stylesheet" href="login.css">

    </head>
    <body>
        <c:if test="${requestScope.error != null}">
            <h3 style="color: red">${requestScope.error}</h3>
        </c:if>
        <c:if test="${requestScope.success != null}">
            <h3 style="color: red">${requestScope.success}</h3>
        </c:if>
        <c:if test="${requestScope.errorr != null}">
            <h3 style="color: red">${requestScope.errorr}</h3>
        </c:if>
            <c:if test="${requestScope.mess != null}">
            <h3 style="color: red">${requestScope.mess}</h3>
        </c:if>
        <div class="container" id="container">

            <div class="form-container register-container">
                <form action="register" method="post">
                    <h1>Register hire.</h1>
                    <input name="user" type="text" placeholder="User">
                    <input name="pass" type="password" placeholder="Password">
                    <input name="repass" type="password" placeholder="Re-Password">
                    <button type="submit">Register</button>                               
                    
                </form>
            </div>
            <div class="form-container login-container">
                <c:set var="cookie" value="${pageContext.request.cookies}"/>
                <form action="login" method="post">
                    <h1>Login here.</h1> 
                    <input name="user" type="text" placeholder="User" value="${cookie.cuser.value}">
                    <input name="pass" type="password" placeholder="Password" value="${cookie.cpassword.value}">
                    <div class="content">
                        <div class="checkbox">
                            <input type="checkbox" ${(cookie.cremember != null?'ckecked':'')} name="remember" value="ON" id="checkbox">
                            <label>Remember me</label>
                        </div>
                        <div class="pass-link">
                            <a href="#" style="color: #242323">Forgot password?</a>
                        </div>
                    </div>
                   <button type="submit">Login</button>
                </form>
            </div>

            <div class="overlay-container">
                <div class="overlay">
                    <div class="overlay-panel overlay-left">
                        <h1 class="title">Hello <br> our beloved customer</h1>
                        <p>If you already have an account, login and start ordering!</p>
                        <button class="ghost" id="login">Login
                            <i class="lni lni-arrow-left login"></i>
                        </button>
                    </div>
                    <div class="overlay-panel overlay-right">
                        <h1 class="title">Start your <br> journey now</h1>
                        <p>If you don't have an account yet, join us and start your journey.</p>
                        <button class="ghost" id="register">Register
                            <i class="lni lni-arrow-right register"></i>
                        </button>
                    </div>
                </div>
            </div>

        </div>

        <script src="loginscript.js"></script>

    </body>
</html>
