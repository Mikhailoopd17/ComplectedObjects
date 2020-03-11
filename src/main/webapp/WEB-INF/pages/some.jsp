<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: Михаил
  Date: 03.03.2020
  Time: 12:59
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
<%--    <link rel="stylesheet" type="text/css" href="<c:url value="/res/some.css"/>">--%>
<%--    <script src="<c:url value="/res/some.js"/>"></script>--%>
</head>
<body>
<%--<div class="st_nav">--%>
<%--    <ul class="st_ul">--%>
<%--        <li class="st_li st_li_1"><a href="#" class="st_a anchor">HOME</a></li>--%>
<%--        <li class="st_li st_li_2"><a href="#" class="st_a anchor">SERVICES</a></li>--%>
<%--        <li class="st_li st_li_3"><a href="#" class="st_a anchor">PRODUCTS</a></li>--%>
<%--        <li class="st_li st_li_4"><a href="#" class="st_a anchor">ABOUT</a></li>--%>
<%--        <li class="st_li st_li_5"><a href="#" class="st_a anchor">CONTACT</a></li>--%>
<%--    </ul>--%>
<%--</div>--%>

<%--<div id="header">--%>
<%--    <h2 align="center">Перечень заказчиков</h2>--%>
<%--    <table align="center">--%>
<%--        <tr>--%>
<%--            <td>--%>
<%--                <form action="/newCustomer">--%>
<%--                    <input type="submit" value="Добавить нового Заказчика">--%>
<%--                </form>--%>
<%--            </td>--%>
<%--            <td>&nbsp</td>--%>
<%--            <td></td>--%>
<%--            <td>--%>
<%--                <form action="/search">--%>
<%--                    <input type="text" content="str">--%>
<%--                    <input type="submit" value="Поиск">--%>
<%--                </form>--%>
<%--            </td>--%>
<%--        </tr>--%>
<%--    </table>--%>
<%--</div>--%>

<%--<link rel="stylesheet" type="text/css" href="<c:url value="/res/style.css"/>">--%>

<%--<div id="content_table">--%>
<%--    <div class="content">--%>
<%--        <ul class="responsive-table">--%>
<%--            <c:forEach items = "${directors}" var="director">--%>
<%--                <li class="table-row">--%>
<%--                    <div class="col col-1">--%>
<%--                        <p >Номер</p>--%>
<%--                        <p>${director.id}</p>--%>
<%--                    </div>--%>

<%--                   <div class="col col-2">--%>
<%--                       <p class="p_title">ФИО</p>--%>
<%--                       <p>${director.toString()}</p>--%>
<%--                   </div>--%>
<%--                    <div class="col col-4">--%>
<%--                        <p>Список организаций</p>--%>
<%--                        <c:forEach items = "${director.customers}" var="cust">--%>
<%--                            <p>+ ${cust.name}</p>--%>
<%--                        </c:forEach>--%>
<%--                    </div>--%>
<%--                </li>--%>
<%--            </c:forEach>--%>
<%--        </ul>--%>
<%--    </div>--%>



<%--<div class="content">--%>
<a href="javascript:void(0)" onclick="document.getElementById('parent_popup_click').style.display='block';">Текст
    ссылки</a>
<div id="parent_popup_click">

    <div id="popup_click">

        <form method="post" action="javascript:void(0);" onsubmit="" id="forma">
            <input type="text" name="fio" placeholder="Ф.И.О" />
            <input type="text" name="phone" placeholder="Телефон" />
            <input type="text" name="email" placeholder="E-Mail" />
            <input type="text" name="adres" placeholder="Адрес доставки" />
            <br />
            <button type="submit" value="отправить" /> Отправить </button>
        </form>

        <a class="close" title="Закрыть"
           onclick="document.getElementById('parent_popup_click').style.display='none';">X</a>
    </div>

</div>
<%--</div>--%>
<%--</div>--%>
</body>
</html>
