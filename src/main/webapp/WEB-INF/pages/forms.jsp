<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Формы</title>

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

<h1>Список форм</h1>

<c:if test="${!empty listForms}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">Статус формы</th>
            <th width="120">Сообщение</th>
            <th width="120">Имя пользователя</th>
            <th width="120">Телефон</th>
            <th width="120">email</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listForms}" var="form">
            <tr>
                <td>${form.id}</td>
                <td>${form.status}</td>
                <td>${form.messageText}</td>
                <td>${form.name}</td>
                <td>${form.phone}</td>
                <td>${form.email}</td>
                <td><a href="<c:url value='/admin/forms/edit/${form.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/admin/forms/remove/${form.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Добавить форму</h1>

<c:url var="editAction" value="/admin/forms/edit/{id}"/>

<form:form action="${editAction}" commandName="form">
    <table>
        <c:if test="${!empty form.email}">
            <tr>
                <td>
                    <form:label path="id">
                        <spring:message text="ID"/>
                    </form:label>
                </td>
                <td>
                    <%--<form:input path="id" readonly="true" size="8" disabled="true"/>--%>
                    <form:hidden path="id"/>
                </td>
            </tr>
        </c:if>
        <tr>
            <td>
                <form:label path="email">
                    <spring:message text="email"/>
                </form:label>
            </td>
            <td>
                <form:input path="email"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="status">
                    <spring:message text="status"/>
                </form:label>
            </td>
            <td>
                <form:input path="status"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="messageText">
                    <spring:message text="messageText"/>
                </form:label>
            </td>
            <td>
                <form:input path="messageText"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="phone">
                    <spring:message text="Year of Issue"/>
                </form:label>
            </td>
            <td>
                <form:input path="phone"/>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit"
                       value="<spring:message text="Edit Form"/>"/>

            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
