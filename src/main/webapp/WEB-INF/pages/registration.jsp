<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div class="white-block" style="width: 500px;">
    <h3 align="center">Зарегистрироваться</h3>
    <form:form method="post" action="index.html" cssClass="form-horizontal" cssStyle="margin: 0 auto;" >
        <div class="control-group">
            <form:label path="email" cssClass="control-label"><spring:message code="label.reg.textEmail"/></form:label>
            <div class="controls">
                <form:errors path="email" cssClass="label label-important" />
                <div><form:input path="email" placeholder="e-mail" cssClass="reg-input" size="64" /></div>
            </div>
        </div>

        <div class="control-group">
            <form:label path="password" cssClass="control-label">Пароль</form:label>
            <div class="controls">
                <form:errors path="password" cssClass="label label-important" />
                <div><form:password path="password" placeholder="password" cssClass="reg-input" size="30" /></div>
            </div>
        </div>

        <div class="control-group">
            <div class="controls">
                <button type="submit" class="btn large btn-success">Registration</button>
            </div>
        </div>
    </form:form>

</div>
</body>
</html>
