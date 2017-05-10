<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html lang="ru">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE-edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <script src="http://code.jquery.com/jquery-1.8.3.js"></script>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <link rel="cdd/style.css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <link rel="stylesheet" href="css/style.css" >
    <title>Купить</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
</head>
<body>
<div class="row" id="navigbar">
    <div class = "navbar navbar-inverse navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="/">Logo</a>
            </div>
            <div class="collapse navbar-collapse" id="navbar-collapse">
                <ul class="nav navbar-nav pull-right">
                    <li><a href="/cars">Автомобили</a></li>
                    <li class="dropdown"><a href="/buy">Купить</a></li>
                    <li class="dropdown">
                        <a href="#" class="dropdown-toggle"
                           data-toggle="dropdown">Продать<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="/quick">Срочный выкуп</a></li>
                            <li><a href="/pricy">Комиссионная продажа</a></li>
                        </ul>
                    </li>
                    <li><a href="/about">О нас</a></li>
                </ul>
            </div>
        </div>
    </div>
</div>
<c:url var="addForm" value="/form/add"/>
<form:form action="${addForm}" commandName="form">
<div class="container">
    <div class="row">
        <div class="col-lg-4"></div>
        <%--<c:url var="addForm" value="/add/form">--%>
        <table>
            <c:if test="${!empty form.message}">
                <tr>
                    <td>
                        <form:label path="id">
                            <spring:message text="ID"/>
                        </form:label>
                    </td>
                    <td>
                        <form:hidden path="id"/>
                    </td>
                </tr>
            </c:if>
            <tr>
                <td>
                    <form:label path="message_text">
                        <spring:message text="Ваш вопрос/предложение"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="message_text"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="name">
                        <spring:message text="Как к вам обращаться?"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="name"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="phone">
                        <spring:message text="Телефон"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="phone"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="email">
                        <spring:message text="email"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="email" pattern="[_A-Za-z0-9\-\+]+?(\.[_A-Za-z0-9\-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*?(\.[A-Za-z]{2,})$"
                                title="Fill field obligatory"
                                type="email"/>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <input type="submit"
                           value="<spring:message text="Отправить"/>"
                    />
                </td>
            </tr>
        </table>
    </div>
    </div>
</form:form>
        <br>
        <div class="copyright">
            <div class="container">
                <div class="col-md-6">
                    <p>© 2017 - Alexandra Rogockaja</p>
                </div>
                <div class="col-md-6">
                    <ul class="bottom_ul">
                        <li><a href="/sign">Sign in/Sign up</a></li>
                    </ul>
                </div>
            </div>
        </div>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <script src="js/bootstrap.js"></script>
</body>
</html>

