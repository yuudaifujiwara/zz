<%--
  Created by IntelliJ IDEA.
  User: User
  Date: 10.01.2018
  Time: 18:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<body>
<script>
    function setVisible() {
        var style = document.getElementById("right-block").style;
        var style2 = document.getElementById("left-block").style;
        var button = document.getElementById("setting-but");
        if(style.width == "25px") {
            style.width = "200px";
            style2.width = "calc(100% - (200px))";
            button.innerHTML=">";
        }else{
            style.width = "25px";
            style2.width="calc(100% - (25px))";
            button.innerHTML="<";
        }
    }
</script>
<div class="wrapper">
    <div class = "menu">
        <ul>
            <li><a href="">ТИТУЛ</a></li>
            <li><a href="">ГСЕ</a></li>
            <li><a href="">МЕН</a></li>
            <li><a href="">ПРОФ</a></li>
            <li><a href="">ИТОГ</a></li>
            <li><a href="">РАСЧЕТ РУП</a></li>
        </ul>
    </div>
    <div id="left-block" class="left-block custom-scrollbar">
        <div class="content-block">
            <div class="content">