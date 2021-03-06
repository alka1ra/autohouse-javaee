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
      <title>Автохаус</title>
      <link href="css/bootstrap.css" rel="stylesheet">
      <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
  <div class="row" id="navigbar">
      <div class = "navbar navbar-inverse navbar-fixed-top">
          <div class="container">
              <div class="navbar-header">
                  <a class="navbar-brand" href="/">Автохаус</a>
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
  <div class="container">

      <div id="carousel" class="carousel slide" data-ride="carousel">
          <!--Индикаторы слайдов-->
          <ol class="carousel-indicators">
              <li data-target="#carousel" data-slide-to="0" class="active"></li>
              <li data-target="#carousel" data-slide-to="1"></li>
              <li data-target="#carousel" data-slide-to="2"></li>
              <li data-target="#carousel" data-slide-to="3"></li>
              <li data-target="#carousel" data-slide-to="4"></li>
          </ol>
          <!--Слайды-->
          <div class="carousel-inner" role="listbox">
              <div class="item active">
                  <img src="images/44.jpg" class="img-responsive">
                  <div class="carousel-caption">
                      <h3>Приезжайте в автохаус!</h3>
                      <p>Вас не устравивает Ваша машина?</p>
                  </div>
              </div>
              <div class="item">
                  <img src="images/5.jpg" alt="" class="first-slide">
                  <div class="carousel-caption">
                      <h3>У нас есть много автомобилей....</h3>
                      <p>на любой вкус и кошелек</p>
                  </div>
              </div>
              <div class="item">
                  <img src="images/8.jpg" class="img-responsive">
                  <div class="carousel-caption">
                      <h3>Покупка и продажа авто никогда не была такой легкой!</h3>
                  </div>
              </div>
              <div class="item">
                  <img src="images/12.jpg" class="img-responsive">
                  <div class="carousel-caption">
                      <h3>Мы поможем Вам осуществить мечту!</h3>
                  </div>
              </div>
              <div class="item">
                  <img src="images/88.jpg" class="img-responsive">
                  <div class="carousel-caption">
                      <h3>Дональд Трамп одобряет!</h3>
                  </div>
              </div>
          </div>
          <!--Стрелки переключения слайдов-->
          <a href="#carousel" class="left carousel-control" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left"></span>
          </a>
          <a href="#carousel" class="right carousel-control" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right"></span>
          </a>
      </div>


  </div>
  <br>
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