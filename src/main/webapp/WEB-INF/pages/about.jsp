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
<div class="container">
    <div class="row">

            <h2 class="centered">О нас</h2>
            <p>В Минске по результатам 2015 года насчитывается более 980 тысяч автомобилей. Каждый год их число увеличивается более чем на 15 тысяч автомобилей. На текущий день автомобилизация уже достигла значения 406 транспортных средств на 1000 человек. Автомобиль уже давно не роскошь, а средство передвижения, которое есть почти в каждой семье, соответственно вопрос его покупки, продажи, обмена наделяется большой важностью для большинства.</p>
            <p>Автохаус «4Cars» предлагает полный спектр услуг в сфере продаж автомобилей: бесплатная постановка на комиссию, лучшие условия продажи автомобилей в кредит, срочный выкуп (до 90% от рыночной стоимости), обмен.</p>
            <p>Автохаус "4Cars"Если вы на пути выбора автомобиля для покупки, хотите продать либо обменять ваш подержанный, купить в кредит, оформить лизинг, а также просто получить бесплатную консультацию – можете считать, что уже получили ответы, на все интересующие Вас вопросы. Высококвалифицированные специалисты помогут разобраться.</p>
            <p>Также у нас Вы можете приобрести качественные автозапчасти. Широкий выбор, низкие цены, доставка в день заказа, удобный поиск.</p>
            <p>Будем рады видеть Вас в числе наших Клиентов!</p>
    </div>
</div>
<br>
      <h3>Карта проезда</h3>
      <div class="map">      
      <p>Наш адрес: ул. Петруся Бровки 4, г. Минск, Республика Беларусь</p><br>
      <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m12!1m3!1d3520.6596738851927!2d27.59372857535595!3d53.918268892500436!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sru!2s!4v1493680005309" width="600" height="450" frameborder="0" style="border:0" allowfullscreen></iframe></div>
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