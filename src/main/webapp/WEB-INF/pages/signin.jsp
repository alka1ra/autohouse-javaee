<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page session="false" %>
<html lang="ru">
<head>
    <meta charset="UTF-8">
    <title>Войти в систему</title>
    <link href="css/style.css" rel="stylesheet">
    <link href="css/bootstrap.css" rel="stylesheet">
</head>
<body>
<div class="row" id="navigbar">
    <div class = "navbar navbar-inverse navbar-static-top">
        <div class="container">
            <div class="navbar-header">
                <a class="navbar-brand" href="index.jsp">Logo</a>
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
<br>
<br>
<br>
<div class="white-block" style="width: 500px;">
    <h3 align="center">Войти в систему</h3>
    <form:form method="post" action="/signin" cssClass="form-horizontal" cssStyle="margin: 0 auto;" >
        <div class="control-group">
            <form:label path="email" cssClass="control-label"><spring:message code="label.reg.textEmail"/></form:label>
            <div class="controls">
                <form:errors path="email" cssClass="label label-important" />
                <div><form:input path="email" placeholder="e-mail" cssClass="reg-input" size="64" /></div>
            </div>
        </div>

        <div class="control-group">
            <form:label path="password" cssClass="control-label">Пароль</form:label>
            <div class="controls">
                <form:errors path="password" cssClass="label label-important" />
                <div><form:password path="password" placeholder="password" cssClass="reg-input" size="30" /></div>
            </div>
        </div>

        <div class="control-group">
            <div class="controls"><button type="submit" class="btn large btn-success">Войти</button></div>
        </div>
    </form:form>

</div>
    <br>
    <br>
<br>
<br>
<br>
<br>
<div class="copyright">
    <div class="container">
        <div class="col-md-6">
            <p>© 2017 - Alexandra Rogockaja</p>
        </div>
        <div class="col-md-6">
            <ul class="bottom_ul">
                <li><a href="/signin">Sign in</a></li>
                <li><a href="/register">Sign in</a></li>
            </ul>
        </div>
    </div>
</div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <script src="js/bootstrap.js"></script>
</body>
</html>