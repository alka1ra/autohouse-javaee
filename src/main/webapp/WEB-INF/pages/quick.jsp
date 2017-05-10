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
    <div class="row">
        <div class="col-lg-1"></div>
        <div class="col-lg-7" id="quick">
            <article>
                <h2 class="centered">Срочный выкуп</h2><br>
                <p>Срочный выкуп авто — услуга для тех, кому нужно срочно продать автомобиль без лишних вопросов. Оформление сделки и выдача денег производится всего за 30 минут. Вы получаете до 90% от рыночной стоимости Вашего авто без какой-либо головной боли. Рыночная стоимость определяется по сайтам av.by и abw.by за похожий автомобиль, одинаковой комплектации и года выпуска.</p>
                <p>Наши преимущества:</p>
                <p>срочный выкуп авто</p>
                <p>Мы предлагаем до 90% от рыночной стоимости автомобиля</p>
                <p>Процесс выкупа займёт не более 30 минут</p>
                <p>Называем реальную стоимость, озвученная цена не изменяется</p>
                <p>Деньги получаете сразу, в офисе компании</p>
                <p>Грамотное оформление документов</p>
                <p>Выезд к клиенту (г. Минск и Минская область)</p>
                <p>Порядок действий:</p>
                <p>Приезжаете к нам по адресу г. Минск, ул. Уманская, д. 54 (ТЦ «Глобо») карта проезда</p>
                <p>В течении 10 минут мы осматривает Ваш автомобиль</p>
                <p>В течении 10 минут оформляем сделку выкупа авто</p>
                <p>Получаете деньги в кассе</p>
                <p>Чем удобен срочный выкуп?</p>
                <p>Если Вы цените скорость, простоту, комфорт и безопасность или же просто срочно нуждаетесь в деньгах, то Вам стоит обратиться к нам. Услуга срочный выкуп автомобиля позволяет быстро и максимально комфортно решить вопрос продажи автомобиля.</p>
                <p>Воспользоваться услугой срочного выкупа авто станет удачной альтернативой самостоятельной продаже. Ведь порой, продавать автомобиль можно очень долго- недели, а иногда и месяцы. Процедура срочного выкупа проходит максимально оперативно, и вы экономите как Ваше драгоценное время, так и нервы, потраченные на показ автомобиля и попытки продать его самостоятельно.</p>
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