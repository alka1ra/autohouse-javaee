<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<%@ taglib prefix="from" uri="http://www.springframework.org/tags/form" %>
<%@ page session="false" %>
<html>
<head>
    <title>Users page</title>

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

<h1>user List</h1>

<c:if test="${!empty listUsers}">
    <table class="tg">
        <tr>
            <th width="80">ID</th>
            <th width="120">PRICE</th>
            <th width="120">login</th>
            <th width="120">MODEL</th>
            <th width="120">YEAR_OF_ISSUE</th>
            <th width="120">MILEAGE</th>
            <th width="120">status</th>
            <th width="120">FUEL_TYPE</th>
            <th width="120">ENGINE_CAPACITY</th>
            <th width="120">BODY_TYPE</th>
            <th width="120">DRIVE_UNIT</th>
            <th width="120">COLOUR</th>
            <th width="120">DESCRIPTION</th>
            <th width="60">Edit</th>
            <th width="60">Delete</th>
        </tr>
        <c:forEach items="${listusers}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.login}</td>
                <td>${user.model}</td>
                <td>${user.price}</td>
                <td>${user.yeaOfIssue}</td>
                <td>${user.mileage}</td>
                <td>${user.status}</td>
                <td>${user.fuelType}</td>
                <td>${user.engineCapacity}</td>
                <td>${user.bodyType}</td>
                <td>${user.driveUnit}</td>
                <td>${user.colour}</td>
                <td>${user.description}</td>
                <td><a href="<c:url value='/admin/users/edit/${user.id}'/>">Edit</a></td>
                <td><a href="<c:url value='/admin/users/remove/${user.id}'/>">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
</c:if>


<h1>Add a user</h1>

<c:url var="addAction" value="/admin/users/add"/>

<form:form action="${addAction}" commandName="user">
    <table>
        <c:if test="${!empty user.login}">
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
                <form:label path="login">
                    <spring:message text="login"/>
                </form:label>
            </td>
            <td>
                <form:input path="login"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="password">
                    <spring:message text="password"/>
                </form:label>
            </td>
            <td>
                <form:input path="password"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="name">
                    <spring:message text="name"/>
                </form:label>
            </td>
            <td>
                <form:input path="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="lastName">
                    <spring:message text="Last name"/>
                </form:label>
            </td>
            <td>
                <form:input path="lastName"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="position">
                    <spring:message text="position"/>
                </form:label>
            </td>
            <td>
                <form:input path="position"/>
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
            <td colspan="2">
                <c:if test="${!empty user.login}">
                    <input type="submit"
                           value="<spring:message text="Edit user"/>"/>
                </c:if>
                <c:if test="${empty user.login}">
                    <input type="submit"
                           value="<spring:message text="Add user"/>"/>
                </c:if>
            </td>
        </tr>
    </table>
</form:form>
</body>
</html>
