<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <link rel="stylesheet"  href="<c:url value="/res/some.css"/>">
    <script src="<c:url value="/res/some.js"/>"></script>
    <title>Objects</title>
</head>
<body>
<div class="st_nav">
    <ul class="st_ul">
        <li class="st_li st_li_1"><a href="#" class="st_a anchor">HOME</a></li>
        <li class="st_li st_li_2"><a href="#" class="st_a anchor">SERVICES</a></li>
        <li class="st_li st_li_3"><a href="#" class="st_a anchor">PRODUCTS</a></li>
        <li class="st_li st_li_4"><a href="#" class="st_a anchor">ABOUT</a></li>
        <li class="st_li st_li_5"><a href="#" class="st_a anchor">CONTACT</a></li>
    </ul>
</div>

<link rel="stylesheet" type="text/css" href="<c:url value="/res/style.css"/>">


<div id="content">
    <div class="content">
    <h2>Реестр объектов</h2>
    <div>
        <form action="/newObject">
            <input type="submit" value="Добавить объект">
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
            <div class="col col-3">Описание</div>
            <div class="col col-4">Заказчик</div>
            <div class="col col-5">Действие</div>
        </li>
        <c:forEach items = "${objects}" var="object">
            <li class="table-row">
                <div class="col col-1" data-label="№">${object.idObject}</div>
                <div class="col col-2" data-label="Наименование">${object.nameObject}</div>
                <div class="col col-3" data-label="Описание">${object.description}</div>
                <div class="col col-4" data-label="Заказчик">${object.customer.name}</div>
                <div class="col col-5" data-label="Действие"></div>
                <div class="col col-5"><a href="/viewCustomer/"> Редактировать </a></div>
                <div class="col col-5"><a href="/deleteCustomer/"> Удалить </a></div>
                    <%--                Добавить раскрывающееся меню с развернутой информацией по заказчику--%>
<%--                <a onclick="javascript:document.getElementById('submenu').style.display='block'" ondblclick="javascript:document.getElementById('submenu').style.display='none'" href="javascript:void(0)">Подробнее</a>--%>
<%--                <div id="submenu" style="display:none; text-align:left;">--%>
<%--                    <div class="col col-4" data-label="Действие"><a onclick="javascript:document.getElementById('subMenuTip0').style.display='none'" href="javascript:void(0)">Закрыть</a></div>--%>
<%--                </div>--%>

            </li>
        </c:forEach>
    </ul>
</div>
</div>
</body>
</html>
