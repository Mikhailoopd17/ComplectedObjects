<%@ page import="group.object_registry.Entity.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
"http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Новый объект</title>
</head>
<body>

<div align="center">
    <h1>Форма добавления нового клиента</h1>

    <c:url var="addObject" value="/addObject"/>

    <form:form modelAttribute="object" method="post" action="${addObject}">
        <form:hidden path="idObject" id="${object}"/>
        <table>
            <tr>
                <td>
                    <form:label path="nameObject" id="nameObject">
                        <spring:message text="Название"/>
                    </form:label>
                </td>
                <td>
                    <form:input path="nameObject" id="nameObject"/>
                </td>
            </tr>
            <tr>
                <td>
                    <form:label path="description">
                        <spring:message text="Описание"/>
                    </form:label>
                </td>
                <td><form:input path="description"/></td>
            </tr>

            <tr>
                <td>
                    <form:label path="customer">
                        <spring:message text="Заказчик"/>
                    </form:label>
                </td>
                <td>
                    <form:select path="customer">
                        <c:forEach items="${customers}" var="customer">
                                <form:option value="${customer}">${customer.name}</form:option>
                        </c:forEach>
                    </form:select>
                </td>
            </tr>

            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Сохранить">
                </td>
            </tr>
        </table>
    </form:form>



</div>



</body>
</html>
