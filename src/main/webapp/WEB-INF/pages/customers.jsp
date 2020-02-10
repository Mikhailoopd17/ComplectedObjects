<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet" type="text/css" href="<c:url value="/res/header.css"/>">
    <title>Customers</title>
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

<link rel="stylesheet" type="text/css" href="<c:url value="/res/style.css"/>">



<div class="content">
    <h2>Перечень заказчиков</h2>
    <div>
        <form action="/newCustomer">
            <input type="submit" value="Добавить нового Заказчика">
        </form>

        <form action="/search">
            <input type="text" content="str">
            <input type="submit" value="Поиск">
        </form>

    </div>
</div>

<div>
    <ul class="responsive-table">
        <li class="table-header">
            <div class="col col-1" >№</div>
            <div class="col col-2">Наименование</div>
            <div class="col col-3">Ссылка</div>
            <div class="col col-4">Действие</div>
        </li>
        <c:forEach items = "${customer}" var="customer">
            <li class="table-row">
                <div class="col col-1" data-label="№">${customer.id}</div>
                <div class="col col-2" data-label="Наименование">${customer.name}</div>
                <div class="col col-3" data-label="Ссылка">${customer.link}</div>
                <div class="col col-4" data-label="Действие"></div>
                <div class="col col-4"><a href="/viewCustomer/${customer.id}"> Редактировать </a></div>
                <div class="col col-4"><a href="/deleteCustomer/${customer.id}"> Удалить </a></div>
<%--                Добавить раскрывающееся меню с развернутой информацией по заказчику--%>
                <a onclick="javascript:document.getElementById('submenu').style.display='block'" ondblclick="javascript:document.getElementById('submenu').style.display='none'" href="javascript:void(0)">Подробнее</a>
                <div id="submenu" style="display:none; text-align:left;">
                    <div class="col col-4" data-label="Действие"><a onclick="javascript:document.getElementById('subMenuTip0').style.display='none'" href="javascript:void(0)">Закрыть</a></div>
                </div>

            </li>
        </c:forEach>
    </ul>
</div>

</body>
</html>
