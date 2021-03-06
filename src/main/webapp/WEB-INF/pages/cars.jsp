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
      <link rel="css/style.css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap-theme.min.css">
      <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
      <link rel="stylesheet" href="css/style.css" >
      <title>Автохаус</title>
      <link href="css/bootstrap.css" rel="stylesheet">
      <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
  <div class="row" id="navigbar">
      <div class = "navbar navbar-inverse navbar-static-top">
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
  <div class="container">
      <div class="row">
          <div class="col-md-1"></div>
          <div class="col-md-10">
              <h2 class="centered" style="text-align: center">Автомобили в наличии</h2>
              <c:if test="${!empty listCars}">
                  <div class="content-product">
                      <c:forEach items="${listCars}" var="car">
                          <div class="col-md-4 col-d">
                              <a href="/cardata/${car.id}">
                                  <div class="men-grid in-men">
                                      <img class="img-responsive" src="images/${car.id}.jpg" alt="">
                                      <br>
                                      <div class="containter">
                                          <div class="row">
                                              <div class="value-in">
                                                <p>${car.brand} ${car.model}</p>
                                                <span>${car.price} у.е.</span>
                                                <span>${car.yeaOfIssue} г.в.</span>
                                                <div class="clearfix"></div>
                                              </div>
                                          </div>
                                      </div>
                                  </div>
                              </a>
                          </div>
                      </c:forEach>
                      <div class="clearfix"> </div>
                  </div>
              </c:if>
          </div>
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
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="js/bootstrap.js"></script>
  </body>
</html>