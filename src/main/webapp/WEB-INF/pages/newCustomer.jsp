<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>


<!DOCTYPE html>


<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/res/some.css"/>">


    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Новый клиент</title>
</head>
<body>

<script src="<c:url value="/res/some.js"/>"></script>

<div class="st_nav">
    <ul class="st_ul">
        <li class="st_li st_li_1"><a href="#" class="st_a anchor">HOME</a></li>
        <li class="st_li st_li_2"><a href="#" class="st_a anchor">SERVICES</a></li>
        <li class="st_li st_li_3"><a href="#" class="st_a anchor">PRODUCTS</a></li>
        <li class="st_li st_li_4"><a href="#" class="st_a anchor">ABOUT</a></li>
        <li class="st_li st_li_5"><a href="#" class="st_a anchor">CONTACT</a></li>
    </ul>
</div>

    <div id="content">
    <form class="contact_form" action="<c:url value="/addCustomer"/>" method="post" name="contact_form">
        <ul>
            <li>
                <h2>Форма добавления нового Заказчика</h2>
                <span class="required_notification">* Обязательные поля</span>
            </li>
            <li>
                <label for="${customer.name}">Наименование:</label>
                <input type="text" name="name"  placeholder="Введите имя" required />
            </li>
            <li>
                <label for="${customer.number}">Номер телефона:</label>
                <input type="text" name="number" placeholder="+7(ххх)-ххх-хх-хх" required />
                <span class="form_hint">Формат "+7(ххх)-ххх-хх-хх или 8(ххх)-ххх-хх-хх"</span>
            </li>
            <li>
                <label for="${customer.email}">Email:</label>
                <input type="email" name="email" placeholder="example@example.com" required />
                <span class="form_hint">Формат "name@something.com"</span>
            </li>

            <li>
                <label for="${customer.inn}">ИНН:</label>
                <input type="number" name="inn" placeholder="ИНН" required />
            </li>
            <li>
                <label for="${customer.kpp}">КПП:</label>
                <input type="number" name="kpp" placeholder="КПП" required />
            </li>

            <li>
                <label for="${director.name}">ФИО директора:</label>
                <input type="text" name="director.name" placeholder="Введите ФИО" required />
            </li>

            <li>
                <label for="${director.number}">Номер телефона директора:</label>
                <input type="text" name="director.number" placeholder="Введите № телефона" required />
                <span class="form_hint">Формат "+7(ххх)-ххх-хх-хх или 8(ххх)-ххх-хх-хх"</span>
            </li>

            <li>
                <button class="submit" type="submit">Добавить в базу</button>
            </li>
        </ul>

    </form>
    </div>
</body>
</html>
