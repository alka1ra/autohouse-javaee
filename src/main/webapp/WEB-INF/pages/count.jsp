<%--
  Created by IntelliJ IDEA.
  User: Александра
  Date: 10/05/2017
  Time: 03:16
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="col-md-1"></div>
        <div class="col-md-10">
            <h2 class="centered" style="text-align: center">
                Условия кредитования для ${car.brand} ${car.model} ${car.yeaOfIssue} г.в.
            </h2>
            <c:if test="${!empty listCredits}">
                <div class="content-product">
                    <c:forEach items="${listCredits}" var="creditTmp">
                        <div class="col-md-4 col-d">
                            <div class="men-grid in-men">
                                <div class="containter">
                                    <div class="row">
                                        <div class="value-in">
                                            Кредит на
                                            <span>${creditTmp.term} месяцев</span>
                                            <span>под ${creditTmp.percent}%</span>
                                            <a href="/count/${car.id}/${creditTmp.id}"  class="btn small btn-success">Рассчитать</a>
                                            <div class="clearfix"></div>
                                            <c:if test="${!empty credit}">
                                                При этом кредите нужно будет платить
                                                <span>${sum} у.е.</span>
                                                в месяц или
                                                <span>${sumPerYear} у.е.</span>
                                                в год
                                            </c:if>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                    <div class="clearfix"> </div>
                </div>
            </c:if>
        </div>
    </div>
</div>
</body>
</html>
