<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" contentType="text/html;charset=utf-8" %>
<html>
    <head>
        <title>Автомобили</title>
    </head>
    <body>
        <h1>Список авто в наличии</h1>

        <c:if test="${!empty listCars}">
            <table class="tg">
                <tr>
                    <th>ID</th>
                    <th>Цена</th>
                    <th>Марка</th>
                    <th>Модель</th>
                    <th>Год выпуска</th>
                    <th>Трансмиссия</th>
                    <th>Тип топлива</th>
                    <th>Пробег</th>
                    <th>Объём двигателя</th>
                    <th>Тип кузова</th>
                    <th>Привод</th>
                    <th>Цвет</th>
                    <th>Описание</th>
                    <th>Редактировать</th>
                    <th>Удалить</th>
                </tr>
                <c:forEach items="${listCars}" var="car">
                    <tr>
                        <td>${car.id}</td>
                        <td>${car.price} у.е.</td>
                        <td>${car.brand}</td>
                        <td>${car.model}</td>
                        <td>${car.yeaOfIssue}</td>
                        <td>${car.transmission}</td>
                        <td>${car.fuelType}</td>
                        <td>${car.mileage} км</td>
                        <td>${car.engineCapacity} см.куб.</td>
                        <td>${car.bodyType}</td>
                        <td>${car.driveUnit}</td>
                        <td>${car.colour}</td>
                        <td>${car.description}</td>
                        <td><a href="<c:url value='/edit/${car.id}'/>">Редактировать</a></td>
                        <td><a href="<c:url value='/remove/${car.id}'/>">Удалить</a></td>
                    </tr>
                </c:forEach>
            </table>
        </c:if>
        <h1>Добавить автомобиль:</h1>
        <c:url var="addAction" value="/admin/add"/>
        <form:form action="${addAction}" commandName="car">
            <table>
                <c:if test="${!empty car.model}">
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
                        <form:label path="price">
                            <spring:message text="Цена"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="price"/>
                    </td>
                </tr>
                <tr>
                    <td><form:label path="brand">
                        <spring:message text="Марка"/>
                    </form:label>
                    </td>
                    <td>
                        <form:input path="brand"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="model">
                            <spring:message text="Модель"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="model"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="yeaOfIssue">
                            <spring:message text="Год выпуска"/>
                        </form:label></td>
                    <td>
                        <form:input path="yeaOfIssue"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="transmission">
                            <spring:message text="Трансмиссия"/>
                        </form:label></td>
                    <td>
                        <form:input path="transmission"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="fuelType">
                            <spring:message text="Тип топлива"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="fuelType"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="mileage">
                            <spring:message text="Пробег"/>
                        </form:label></td>
                    <td>
                        <form:input path="mileage"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="engineCapacity">
                            <spring:message text="Объём двигателя"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="engineCapacity"/></td>
                </tr>
                <tr>
                    <td>
                        <form:label path="bodyType">
                            <spring:message text="Тип кузова"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="bodyType"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="driveUnit">
                            <spring:message text="Привод"/>
                        </form:label>
                    </td>
                    <td>
                        <form:input path="driveUnit"/>
                    </td>
                </tr>
                <tr>
                    <td>
                        <form:label path="colour">
                            <spring:message text="Цвет"/>
                        </form:label>
                    </td>
					<td>
                        <form:input path="colour"/>
                    </td>
				</tr>
				<tr>
                    <td>
                        <form:label path="description">
                            <spring:message text="Описание"/>
                        </form:label>
                    </td>
					<td>
                        <form:input path="description"/>
                    </td>
				</tr>
				<tr>
					<td colspan="2">
						<c:if test="${!empty car.model}">
							<input type="submit" value="<spring:message text="Редактировать авто"/>"/> 
						</c:if>
						<c:if test="${empty car.model}">
							<input type="submit" value="<spring:message text="Добавить авто"/>"/>
						</c:if>
					</td>
				</tr>
			</table>
		</form:form>
	</body>
</html>