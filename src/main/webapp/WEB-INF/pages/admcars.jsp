<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Редактирование автомобилей</title>

    <style type="text/css">
        .tg {
            border-collapse: collapse;
            border-spacing: 0;
            border-color: #ccc;
        }

        .tg td {
            font-family: Arial, sans-serif;
            font-size: 14px;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #fff;
        }

        .tg th {
            font-family: Arial, sans-serif;
            font-size: 14px;
            font-weight: normal;
            padding: 10px 5px;
            border-style: solid;
            border-width: 1px;
            overflow: hidden;
            word-break: normal;
            border-color: #ccc;
            color: #333;
            background-color: #f0f0f0;
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Вернуться в главное меню</a>

<br/>
<br/>

<h1>Car List</h1>

<c:if test="${!empty listCars}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Цена</th>
            <th width="120">Марка</th>
            <th width="120">Модель</th>
            <th width="120">Год выпуска</th>
            <th width="120">Пробег</th>
            <th width="120">Трансмиссия</th>
            <th width="120">Тип топлива</th>
            <th width="120">Объём двигателя</th>
            <th width="120">Тип кузова</th>
            <th width="120">Привод</th>
            <th width="120">Цвет</th>
            <th width="120">Описание</th>
            <th width="60">Редактировать</th>
            <th width="60">Удалить</th>
        </tr>
        <c:forEach items="${listCars}" var="car">
            <tr>
                <td>${car.id}</td>
                <td>${car.brand}</td>
                <td>${car.model}</td>
                <td>${car.price}</td>
                <td>${car.yeaOfIssue}</td>
                <td>${car.mileage}</td>
                <td>${car.transmission}</td>
                <td>${car.fuelType}</td>
                <td>${car.engineCapacity}</td>
                <td>${car.bodyType}</td>
                <td>${car.driveUnit}</td>
                <td>${car.colour}</td>
                <td>${car.description}</td>
                <td><a href="<c:url value='/admin/cars/edit/${car.id}'/>">Редактировать</a></td>
                <td><a href="<c:url value='/admin/cars/remove/${car.id}'/>">Удалить</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Add a Car</h1>

<c:url var="addAction" value="/admin/cars/add"/>

<form:form action="${addAction}" commandName="car">
    <table>
        <c:if test="${!empty car.brand}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="id" readonly="true" size="8" disabled="true"/>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="brand">
                    <spring:message text="Brand"/>
                </form:label>
            </td>
            <td>
                <form:input path="brand"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="model">
                    <spring:message text="Model"/>
                </form:label>
            </td>
            <td>
                <form:input path="model"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="price">
                    <spring:message text="Price"/>
                </form:label>
            </td>
            <td>
                <form:input path="price"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="yeaOfIssue">
                    <spring:message text="Year of Issue"/>
                </form:label>
            </td>
            <td>
                <form:input path="yeaOfIssue"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="mileage">
                    <spring:message text="Mileage"/>
                </form:label>
            </td>
            <td>
                <form:input path="mileage"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="transmission">
                    <spring:message text="Transmission"/>
                </form:label>
            </td>
            <td>
                <form:input path="transmission"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="fuelType">
                    <spring:message text="Fuel Type"/>
                </form:label>
            </td>
            <td>
                <form:input path="fuelType"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="engineCapacity">
                    <spring:message text="Engine Capacity"/>
                </form:label>
            </td>
            <td>
                <form:input path="engineCapacity"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="bodyType">
                    <spring:message text="Body Type"/>
                </form:label>
            </td>
            <td>
                <form:input path="bodyType"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="driveUnit">
                    <spring:message text="Drive Unit"/>
                </form:label>
            </td>
            <td>
                <form:input path="driveUnit"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="colour">
                    <spring:message text="Colour"/>
                </form:label>
            </td>
            <td>
                <form:input path="colour"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="description">
                    <spring:message text="Description"/>
                </form:label>
            </td>
            <td>
                <form:input path="description"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty car.brand}">
                    <input type="submit"
                           value="<spring:message text="Edit Car"/>"/>
                </c:if>
                <c:if test="${empty car.brand}">
                    <input type="submit"
                           value="<spring:message text="Add Car"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
