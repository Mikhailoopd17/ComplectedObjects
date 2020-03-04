<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>

    <title>Start page</title>
</head>
<body>
<link rel="stylesheet" type="text/css" href="<c:url value="/res/some.css"/>">
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
    <h1> Это Стартовая страница приложения "Выполненные объекты"</h1>

    <h2> Для навигации выберете требуемый пункт меню</h2>

    <table>
        <tr>
            <td><li><a href ="/objects">Открыть реестр</a></li></td>
        </tr>
        <tr>
            <td><li><a href ="/newObject">Добавить новый объект</a></li></td>
        </tr>
        <tr>
            <td><li><a href="<c:url value="/customers"/>"> Список заказчиков</a></li></td>
        </tr>
    </table>
</div>

</body>
</html>
