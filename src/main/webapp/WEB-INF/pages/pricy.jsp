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
    <div class="col-lg-1"></div>
    <div class="col-lg-7" id="pricy">
        <article>
        <h2 class="centered">Комиссионная продажа</h2><br>
            <p>Если Вы хотите максимально выгодно продать автомобиль – мы предлагаем воспользоваться услугами нашего комиссионного магазина. В отличие от услуги по автовыкупу, Вы сможете получить 100% рыночной стоимости своего авто. Комиссионная продажа конечно не гарантирует однозначную продажу через определенное время, но вам не придется думать о поиске покупателя, тратить время на показ и споры о цене.</p>
            <p>Цену на авто устанавливаете Вы. Наша комиссия минимальна, добавляется к Вашей цене </p>
            <p>ВЫ:</p>
            <p>Вы можете  разместить  авто для продажи не снимая его с учета в ГАИ!</p>
            <p>Не платите за стоянку</p>
            <p>Не тратите свое время</p>
            <p>Продаете авто по приемлемой для Вас цене</p>
            <p>Получаете возможность продажи Вашего авто в кредит или лизинг (90% всех продаж)</p>
            <p>100% расчет после продажи Вашего авто в течении 3-х банковских дней (обычно день в день)</p>
            <p>Можете забрать авто в любое время без дополнительных выплат (договор бессрочный)</p>
            <p>Получаете персонального менеджера для получения информации по продаж</p>
            <p>МЫ:</p>
            <p>Бесплатно принимаем на комиссию</p>
            <p>Бесплатно подготавливаем к продаже</p>
            <p>Бесплатно готовим полный пакет фотографий</p>
            <p>Бесплатно размещаем Ваш авто на всех авто-площадках интернета</p>
            <p>Бесплатно занимаемся продажей вашего автомобиля</p>
            <p>Бесплатно оформляем сделку купли-продажи</p>
        </article>
    </div>
   <div id="secondary" class="widget-area col-lg-4" role="complementary">
            <aside id="text-5" class="widget widget_text">
                <h4 class="widget-title">Online-заявка на выкуп:</h4>
                <br>
                <div class="textwidget">
                    <div role="form">
                        <div class="screen-reader-response"></div>
                        <form class="quick_form" action="" method="post">
                            <ul>
                                <li>
                                    <b>Марка:</b><br>
                                    <span>
                                        <input type="text" name="brand" pattern="[a-zA-ZА-Яа-я]+"
                                        required title="Латинские и кириллические буквы и цифры">
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Модель:</b><br>
                                    <span >
                                        <input name="model" type="text" pattern="[a-zA-ZА-Яа-я]+"
                                               required title="Латинские и кириллические буквы и цифры">
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Год выпуска:</b><br>
                                    <span>
                                        <input name="year" type="text" pattern="[12]{1}[890]{1}[0-9]{2}"
                                        required title="4 цифры: 18**-20**">
                                    </span><br>
                                </li>
                                <li>
                                    <b>Трансмиссия:</b><br>
                                    <span>
                                        <select name="transmisson" aria-required="true" aria-invalid="false">
                                           <option value="" selected="selected">---</option>
                                           <option value="механическая">механическая</option>
                                           <option value="автоматическая">автоматическая</option>
                                        </select>
                                     </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Объем двигателя:</b><br>
                                    <span>
                                        <input name="engine" type="text" required>
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Тип топлива:</b><br>
                                    <span>
                                        <select name="fuel">
                                           <option value="" selected="selected">---</option>
                                           <option value="бензин">бензин</option>
                                           <option value="дизель">дизель</option>
                                           <option value="гибридный">гибридный</option>
                                        </select>
                                     </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Пробег:</b><br>
                                    <span>
                                        <input name="mileage">
                                    </span>
                                    <br>
                                </li>
                                <li><b>Тип кузова:</b><br>
                                <span>
                                    <select name="body" aria-required="true" aria-invalid="false">
                                       <option value="" selected="selected">---</option>
                                       <option value="седан">седан</option>
                                       <option value="универсал">универсал</option>
                                       <option value="хэтчбэк">хэтчбэк</option>
                                       <option value="купе">купе</option>
                                       <option value="внедорожник">внедорожник</option>
                                       <option value="минивэн">минивэн</option>
                                       <option value="кабриолет">кабриолет</option>
                                    </select>
                                 </span>
                                </li>
                                <li>
                                    <br>
                                    <b>Цвет:</b><br>
                                    <span>
                                        <input name="color" aria-invalid="false" type="text">
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Минимальная цена за которую вы готовы продать ваше авто:</b>
                                    <br>
                                    <span>
                                        <input name="price" aria-required="true" aria-invalid="false" type="text">
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Дополнительная информация:</b>
                                    <br>
                                    <span>
                                        <textarea name="other" cols="40" rows="10" class="wpcf7-form-control wpcf7-textarea" aria-invalid="false"></textarea>
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <h4>Контактная информация для связи</h4>
                                </li>
                                <li>
                                    <b>Имя:</b>
                                    <br>
                                    <span><input name="name" aria-required="true" aria-invalid="false" type="text">
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <b>Телефон:</b>
                                    <br>
                                    <span>
                                        <input name="phone" aria-required="true" aria-invalid="false" type="tel">
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <b>e-mail:</b>
                                    <br>
                                    <span>
                                        <input name="email"
                                               pattern="[_A-Za-z0-9\-\+]+?(\.[_A-Za-z0-9\-]+)*@[A-Za-z0-9]+(\.[A-Za-z0-9]+)*?(\.[A-Za-z]{2,})$"
                                               required title="Fill field obligatory"
                                               type="email">
                                    </span>
                                    <br>
                                </li>
                                <li>
                                    <p>
                                        <input value="Отправить" type="submit">
                                    </p>
                                </li>
                            </ul>
                        </form>
                    </div>
                </div>
            </aside>
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