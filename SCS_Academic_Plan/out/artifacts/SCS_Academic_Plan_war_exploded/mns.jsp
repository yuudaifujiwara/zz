<%@ page import="org.scs.ap.content.Assignment" %>
<%@ page import="java.sql.Connection" %>
<%@ page import="org.scs.ap.database.Database" %><%--
  Created by IntelliJ IDEA.
  User: User
  Date: 14.01.2018
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    String backColorHead="background: #FFD0C6";
    String backColorCols="background: #FFE1D7";
    Database database = new Database();
    Connection connection = database.getConnection();
    Assignment men = new Assignment(connection, backColorHead, backColorCols, 2);
%>
<html>
<head>
    <title>МЕН</title>
    <LINK REL="StyleSheet" HREF="<%=request.getContextPath()%>/styles/style.css" TYPE="text/css">
</head>
<%@ include file="top-container.jsp" %>
<form>
    <div id="cont-main-block" style="height: 1100px">
        <table id="cont-table" style="width: 100%; text-align: left; font-size: 11pt;" class = "title-table">
            <tr>
                <td rowspan="4" style="width: 90px">№ п/п</td>
                <td rowspan="4" style="width: 300px">Название дисципилины</td>
                <td rowspan="4" style="width: 40px" class="rotatable">Шифр кафедры</td>
                <td rowspan="4" class="rotatable">з.е</td>
                <td rowspan="4" class="rotatable">Экзамены</td>
                <td rowspan="4" class="rotatable">Зачёты</td>
                <td rowspan="4" class="rotatable">Общий объём</td>
                <td colspan="7">Часы</td>
                <td colspan="32">
                    Распределение по курсам, семестрам и неделям
                </td>
            </tr>
            <%=men.headTable()%>
            <tr>
                <td colspan="46" style="<%=backColorHead%>"><%=men.getCycle(2)%></td>
            </tr>
            <tr>
                <td colspan="46" style="font-weight:bolder; <%=backColorHead%>"><%=men.getParts(3)%></td>
            </tr>
            <%=men.getSubjects(3)%>
            <tr>
                <td colspan="46" style="font-weight:bolder; <%=backColorHead%>"><%=men.getParts(4)%></td>
            </tr>
            <%=men.getSubjects(4)%>
        </table>
    </div>
    <div style="width: 1800px; height: 100px; bottom:0;">
        <input type="submit" name="submit" class="save-button" value="Сохранить"/>
    </div>
    <% connection.close(); %>
</form>
<%@ include file="bottom-container.jsp" %>