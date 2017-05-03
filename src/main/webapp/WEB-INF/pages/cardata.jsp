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
    <title>Информация о ${car.brand} ${car.model}</title>
    <link href="css/bootstrap.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
    <script src="js/jquery.min.js"></script>
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
            });
        });
    </script>
    <!--//slider-script-->
    <script>$(document).ready(function(c) {
        $('.alert-close').on('click', function(c){
            $('.message').fadeOut('slow', function(c){
                $('.message').remove();
            });
        });
    });
    </script>
    <script>
        $(document).ready(function(c) {
            $('.alert-close1').on('click', function(c){
                $('.message1').fadeOut('slow', function(c){
                    $('.message1').remove();
                });
            });
        });
    </script>
    <link rel="stylesheet" href="css/etalage.css">
    <script src="js/jquery.etalage.min.js"></script>
    <script>
        jQuery(document).ready(function($){
            $('#etalage').etalage({
                thumb_image_width: 300,
                thumb_image_height: 400,
                source_image_width: 900,
                source_image_height: 1200,
                show_hint: true,
                click_callback: function(image_anchor, instance_id){
                    alert('Callback example:\nYou clicked on an image with the anchor: "'+image_anchor+'"\n(in Etalage instance: "'+instance_id+'")');
                }
            });
        });
    </script>
    <!-- the jScrollPane script -->
    <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
    <script type="text/javascript" id="sourcecode">
        $(function() {
            $('.scroll-pane').jScrollPane();
        });
    </script>
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
                        <li><a href="cars.jsp">Автомобили</a></li>
                        <li class="dropdown">
                            <a href="buy.jsp" class="dropdown-toggle"
                               data-toggle="dropdown">Купить<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="#"></a>Купить в кредит</li>
                                <li><a href="#"></a>Обмен авто</li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="#" class="dropdown-toggle"
                               data-toggle="dropdown">Продать<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li><a href="quick.jsp"></a>Срочный выкуп</li>
                                <li><a href="pricy.jsp"></a>Комиссионная продажа</li>
                            </ul>
                        </li>
                        <li><a href="/about">О нас</a></li>
                    </ul>
                </div>
            </div>
        </div>
    </div>
    <ol class="breadcrumb">
        <li><a href="/">Главная</a></li>
        <li><a href="/cars">Автомобили</a></li>
    </ol>
    <div class="container">
        <div class="single">
            <div class="col-md-9">
                <div class="single_grid">
                    <div class="grid images_3_of_2">
                        <ul id="etalage">
                            <li>
                                <a href="optionallink.html">
                                    <img class="etalage_thumb_image img-responsive" src="images/sin.jpg" alt="" >
                                    <img class="etalage_source_image img-responsive" src="images/sin-1.jpg" alt="" >
                                </a>
                            </li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="images/sin1.jpg" alt="" >
								<img class="etalage_source_image img-responsive" src="images/sin-2.jpg" alt="" >
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="images/sin.jpg"  alt="" >
								<img class="etalage_source_image img-responsive" src="images/sin-1.jpg" alt="" >
							</li>
							<li>
								<img class="etalage_thumb_image img-responsive" src="images/sin2.jpg" alt=""  >
								<img class="etalage_source_image img-responsive" src="images/sin-3.jpg" alt="" >
                            </li>
						</ul>
                        <div class="clearfix"> </div>
                    </div>
                    <!---->
                    <div class="span1_of_1_des">
                        <div class="desc1">
                            <h3>${car.brand} ${car.model}</h3>
                            <p>${car.description}</p>
                            <h5>${car.price} у.е.<a href="#">click for offer</a></h5>

                            <div class="share-desc">
                                <div class="share">
                                    <h4>Поделиться: </h4>
                                    <ul class="share_nav">
                                        <li><a href="#"><img src="images/facebook.png" title="facebook"></a></li>
                                        <li><a href="#"><img src="images/twitter.png" title="Twiiter"></a></li>
                                        <li><a href="#"><img src="images/rss.png" title="Rss"></a></li>
                                        <li><a href="#"><img src="images/gpluse.png" title="Google+"></a></li>
                                    </ul>
                                </div>
                                <div class="clearfix"></div>
                            </div>
                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <!---->
                <div class=" possible-single">
                    <h3 class="catalog-header">Технические данные</h3>
                    <table class="features-table">
                        <tr>
                            <td class="attribute-label-single">Год выпуска</td>
                            <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.yeaOfIssue}</span> <span class="attribute-unit-single"></span></td>
					    </tr>
                        <tr>
                            <td class="attribute-label-single">Пробег</td>
                            <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.mileage} км</span> <span class="attribute-unit-single">км.</span></td>
                        </tr>
                        <tr>
                            <td class="attribute-label-single">Объем двигателя</td>
                            <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.engineCapacity} см.куб.</span> <span class="attribute-unit-single">см³</span></td>
                        </tr>
                        <tr>
						    <td class="attribute-label-single">Цвет</td>
						    <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.colour}</span> <span class="attribute-unit-single"></span></td>
					    </tr>
                        <tr>
						    <td class="attribute-label-single">Тип кузова</td>
						    <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.bodyType}</span> <span class="attribute-unit-single"></span></td>
                        </tr>
                        <tr>
						    <td class="attribute-label-single">Тип топлива</td>
						    <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.fuelType}</span> <span class="attribute-unit-single"></span></td>
					    </tr>
                        <tr>
						    <td class="attribute-label-single">Трансмиссия</td>
						    <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.transmission}</span> <span class="attribute-unit-single"></span></td>
					    </tr>
                        <tr>
						    <td class="attribute-label-single">Привод</td>
						    <td class="attribute-value-unit-single"><span class="attribute-value-single">${car.driveUnit}</span> <span class="attribute-unit-single"></span></td>
					    </tr>
                    </table>
                </div>
                <!---->
            </div>
            <!---->
            <div class="col-md-1"></div>
            <div class="clearfix"> </div>
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