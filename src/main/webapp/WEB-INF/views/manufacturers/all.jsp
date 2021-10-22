<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/common.css' %>
    <%@include file='/WEB-INF/views/css/button.css' %>
</style>
<html>
<head>
    <title>All manufacturers</title>
</head>
<body>
<p style="text-align: left">
<form action=manufacturers/add>
    <button>create new manufacturer</button>
</form>
<form action=index>
    <button>go to main menu</button>
</form>
<h1> Table of manufacturers</h1>
<table class="tg">
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>country</td>
        <td></td>
    </tr>
    <c:forEach items="${manufacturers}" var="manufacturer">
    <tr>
        <td><c:out value="${manufacturer.id}" /></td>
        <td><c:out value="${manufacturer.name}" /></td>
        <td><c:out value="${manufacturer.country}"/></td>
        <td><a href="${pageContext.request.contextPath}/manufacturers/delete?id=${manufacturer.getId()}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
