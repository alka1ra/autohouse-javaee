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
<div class="container">
    <div class="row">
        <div class="col-lg-6">
            <article>
                <p class="title">Купить автомобиль в кредит</p>
                <p>Лучшие условия кредитования на автомобили от «4Cars».</p>
                <p>авто в кредитАвтохаус «4Cars» работает практически со всеми банками Беларуси. Наши специалисты помогут выбрать наиболее подходящий вариант кредита среди многообразия программ кредитования. Это позволяет нам осуществлять продажу авто в кредит на самых выгодных условиях.</p>
                <p>Вам больше не нужно тратить свое время на:</p>
                <p>Поиск информации о банках</p>
                <p>Анализ условий программ кредитования авто</p>
                <p>Оформление документов</p>
                <p>NEW! Услуга «Кредит друг у друга»:</p>
                <p>Вы находите ЛЮБОЙ автомобиль с сайтов «av.by«, «abw.by«;</p>
                <p>Мы оформляем Вам его в кредит;</p>
                <p>Мы рассчитываемся с продавцом.</p>
            </article>
        </div>
        <div class="col-lg-6">
            <article>
                <p class="title">Обмен автомобиля</p>
                <p>Решили сменить автомобиль?</p>
                <p>обмен автоОбмен авто с «4Cars»- лучший вариант. Весь процесс составит 30 минут! Если стоимость Вашего автомобиля выше стоимости нашего – мы доплатим разницу любым удобным для Вас способом, если ниже – Вы, так же можем оформить кредит на недостающую сумму в кратчайшие сроки.</p>
                <p>Порядок действий:</p>
                <p>Вы выбираете автомобиль на нашей площадке</p>
                <p>Приезжаете к нам на осмотр Вашего автомобиля</p>
                <p>В течении 10 минут наш специалист осматривает Ваш автомобиль</p>
                <p>Договариваемся с Вами о доплате</p>
                <p>В течении 20 минут юридически грамотно оформляем сделку</p>
                <p>Наши преимущества:</p>
                <p>Мы предлагаем до 90% от рыночной стоимости автомобиля</p>
                <p>Процесс обмена займёт не более 30 минут</p>
            </article>
        </div>
    </div>
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
</div>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script src="js/bootstrap.js"></script>
</body>
</html>

