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
    <link rel="stylesheet"  href="<c:url value="/res/header.css"/>">
    <title>Новый объект</title>
</head>
<body>
<header>
    <nav class="dws-menu">
        <input type="checkbox" name="toggle" id="menu" class="toggleMenu">
        <label for="menu" class="toggleMenu"><i class="fa fa-bars"></i>Меню</label>
        <ul>
            <li><a href="#"><i class="fa fa-home"></i>Главная</a></li>
            <li>
                <input type="checkbox" name="toggle" class="toggleSubmenu" id="sub_m1">
                <a href="#"><i class="fa fa-shopping-cart"></i>Продукция</a>
                <label for="sub_m1" class="toggleSubmenu"><i class="fa"></i></label>
                <ul>
                    <li>
                        <input type="checkbox" name="toggle" class="toggleSubmenu" id="sub_m1-1">
                        <a href="#">Одежда</a>
                        <label for="sub_m1-1" class="toggleSubmenu"><i class="fa"></i></label>
                        <ul>
                            <li><a href="#">Обувь</a></li>
                            <li><a href="#">Куртки</a></li>
                            <li><a href="#">Брюки</a></li>
                        </ul>
                    </li>
                    <li>
                        <input type="checkbox" name="toggle" class="toggleSubmenu" id="sub_m1-2">
                        <a href="#">Электроника</a>
                        <label for="sub_m1-2" class="toggleSubmenu"><i class="fa"></i></label>
                        <ul>
                            <li><a href="#">Камеры</a></li>
                            <li><a href="#">Компьютеры</a></li>
                            <li>
                                <input type="checkbox" name="toggle" class="toggleSubmenu" id="sub_m1-2-1">
                                <a href="#">Телефоны</a>
                                <label for="sub_m1-2-1" class="toggleSubmenu"><i class="fa"></i></label>
                                <ul>
                                    <li><a href="#">Samsung</a></li>
                                    <li><a href="#">Flf</a></li>
                                    <li><a href="#">Apple</a></li>
                                </ul>
                            </li>
                        </ul>
                    </li>
                    <li><a href="#">Продукты питания</a></li>
                    <li><a href="#">Инструменты</a></li>
                    <li><a href="#">Быт. химия</a></li>
                </ul>
            </li>
            <li>
                <input type="checkbox" name="toggle" class="toggleSubmenu" id="sub_m2">
                <a href="#"><i class="fa fa-cogs"></i>Услуги</a>
                <label for="sub_m2" class="toggleSubmenu"><i class="fa"></i></label>
                <ul>
                    <li><a href="#">Услуга 1</a></li>
                    <li><a href="#">Услуга 2</a></li>
                    <li><a href="#">Услуга 3</a></li>
                </ul>
            </li>
            <li><a href="#"><i class="fa fa-th-list"></i>Новости</a></li>
            <li><a href="#"><i class="fa fa-envelope-open"></i>Контакты</a></li>
        </ul>
    </nav>
</header>
        <div align="center">
            <h1>Форма добавления нового клиента</h1>
        </div>
<c:url var="add" value="/addObject"/>
 <form:form method="post" action="${add}">
<%--     <form:form modelAttribute="customer" method="post">--%>
<%--         <div>--%>
<%--             <form:label path="name" id="nameCustomer">--%>
<%--                 <spring:message text="Заказчик"/>--%>
<%--             </form:label>--%>

<%--             <form:select path="name" id="nameCustomer">--%>
<%--                 <form:options items="${customers}"/>--%>
<%--             </form:select>--%>
<%--         </div>--%>
<%--     </form:form>--%>
     <form:form modelAttribute="object" method="post" action="${add}">
         <form:hidden path="entityObject.idObject" id="${object.entityObject.idObject}"/>
            <div>
                <form:label path="entityObject.nameObject" id="nameObject">
                    <spring:message text="Название"/>
                </form:label>
                <form:input path="entityObject.nameObject" id="nameObject"/>
            </div>
            <div>
                <form:label path="entityObject.description">
                    <spring:message text="Описание"/>
                </form:label>

                <form:input path="entityObject.description"/>
            </div>
         <div>
             <form:label path="custom" id="nameCustomer">
                 <spring:message text="Заказчик"/>
             </form:label>

             <form:select path="custom" id="nameCustomer">
                 <form:options items="${customers}"/>
             </form:select>
         </div>
         <form:button type="submit">Сохранить</form:button>
<%--         если здесь, то работает только с полями объекта (не видит заказчика)--%>
     </form:form>
<%--     <form:button type="submit">Сохранить</form:button>--%>
 </form:form>
</body>
</html>
