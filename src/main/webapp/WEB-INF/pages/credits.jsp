<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Доступные кредиты</title>

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

        .tg .tg-4eph {
            background-color: #f9f9f9
        }
    </style>
</head>
<body>
<a href="../../index.jsp">Back to main menu</a>

<br/>
<br/>

<h1>Car List</h1>

<c:if test="${!empty listCredits}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Срок</th>
            <th width="120">Процент</th>
            <th width="60">Редактировать</th>
            <th width="60">Удалить</th>
        </tr>
        <c:forEach items="${listCredits}" var="credit">
            <tr>
                <td>${credit.id}</td>
                <td>${credit.term}</td>
                <td>${credit.percent}%</td>
                <td><a href="<c:url value='/admin/credits/edit/${credit.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/admin/credits/remove/${credit.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Add a Credit</h1>

<c:url var="addAction" value="/admin/credits/add"/>

<form:form action="${addAction}" commandName="credit">
    <table>
        <c:if test="${!empty credit.term}">
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
                <form:label path="term">
                    <spring:message text="Term"/>
                </form:label>
            </td>
            <td>
                <form:input path="term"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="percent">
                    <spring:message text="Percent"/>
                </form:label>
            </td>
            <td>
                <form:input path="percent"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <c:if test="${!empty credit.term}">
                    <input type="submit"
                           value="<spring:message text="Edit Credit"/>"/>
                </c:if>
                <c:if test="${empty credit.percent}">
                    <input type="submit"
                           value="<spring:message text="Add Credit"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
