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
    <title>Pfrfpxbr</title>
</head>
<body>

<div align="center">
    <h1>Карточка заказчика</h1>
    <form:form name="view" modelAttribute="customer" action="/update" method="get">
<%--    <table border="1px solid black" cellspacing="0">--%>
<%--        <tr>--%>
<%--            <td>Номер в базе:</td>--%>
<%--            <td><form:input path="id" readonly="true"/></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Наименование:</td>--%>
<%--            <td><form:input path="name"/></td>--%>
<%--        </tr>--%>
<%--        <tr>--%>
<%--            <td>Ссылка:</td>--%>
<%--            <td><form:input path="link"/></td>--%>
<%--        </tr>--%>
<%--    </table>--%>
    <form:hidden path="id" id="${customer.id}"/>
    <table>
        <tr>
            <td>
                <form:label path="name" id="name">
                    <spring:message text="Название"/>
                </form:label>
            </td>
            <td>
                <form:input path="name" id="name"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="number" id="number">
                    <spring:message text="Номер телефона"/>
                </form:label>
            </td>
            <td>
                <form:input path="number" id="number"/>
            </td>
        </tr>
        <tr>
            <td>
                <form:label path="email">
                    <spring:message text="Ссылка"/>
                </form:label>
            </td>
            <td><form:input path="email"/></td>
        </tr>

        <tr>
            <td>
                <form:label path="inn" id="inn">
                    <spring:message text="ИНН"/>
                </form:label>
            </td>
            <td>
                <form:input path="inn" id="inn"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="kpp" id="kpp">
                    <spring:message text="КПП"/>
                </form:label>
            </td>
            <td>
                <form:input path="kpp" id="kpp"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="director.name" id="director.name">
                    <spring:message text="Имя директора"/>
                </form:label>
            </td>
            <td>
                <form:input path="director.name" id="director.name"/>
            </td>
        </tr>

        <tr>
            <td>
                <form:label path="director.number" id="director.number">
                    <spring:message text="Имя директора"/>
                </form:label>
            </td>
            <td>
                <form:input path="director.number" id="director.number"/>
            </td>
        </tr>
            <form:button name="SAVE" value="submit" id="SAVA">Save</form:button>
    </form:form>


</div>
</body>
</html>