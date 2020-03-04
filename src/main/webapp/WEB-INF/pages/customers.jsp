<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Customers</title>
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





<div id="header">
    <h2 align="center">Перечень заказчиков</h2>
    <table align="center">
        <tr>
            <td>
                <form action="/newCustomer">
                    <input type="submit" value="Добавить нового Заказчика">
                </form>
            </td>
            <td>&nbsp</td>
            <td></td>
            <td>
                <form action="/search">
                    <input type="text" content="str">
                    <input type="submit" value="Поиск">
                </form>
            </td>
        </tr>
    </table>
</div>

<div id="content_table">
    <div class="content">
    <ul class="responsive-table">
<%--        <li class="table-header">--%>
<%--            <div class="col col-1" >№</div>--%>
<%--            <div class="col col-2">Наименование</div>--%>
<%--            <div class="col col-3">Ссылка</div>--%>
<%--            <div class="col col-4"></div>--%>
<%--        </li>--%>
        <c:forEach items = "${customer}" var="customer">
            <li class="table-row">
                <table>
                    <tr>
                        <div class="col col-2">
                            <p class="p_title">Наименование</p>
                            <p>${customer.name}</p>
                        </div>

                        <div class="col col-3">
                            <p class="p_title">Ссылка</p>
                            <p>${customer.email}</p>
                        </div>
                        <div class="col col-3">
                            <p class="p_title"></p>
                            <p>
                                <a onclick="document.getElementById('submenu').style.display='block'"
                                   ondblclick="document.getElementById('submenu').style.display='none'"
                                   href="javascript:void(0)">Подробнее
                                </a>
                            </p>
                        </div>
                    </tr>
                    <tr>
                        <div>
                            <p>${customer.id}</p>
                            <p>${customer.inn}</p>
                            <p>${customer.kpp}</p>
                            <p>${customer.director.id}</p>
                            <p>${customer.director.name}</p>
                            <p>${customer.director.number}</p>
                            <a href="/viewCustomer/=${customer.id}"> Редактировать </a>
                            <a href="/deleteCustomer/=${customer.id}"> Удалить </a>
                        </div>
                    </tr>
                </table>


            </li>
        </c:forEach>
    </ul>
</div>
</div>
</body>
</html>
