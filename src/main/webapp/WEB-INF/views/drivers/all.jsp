<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/common.css' %>
    <%@include file='/WEB-INF/views/css/button.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<p style="text-align: left">
<form action=drivers/add>
    <button>create new driver</button>
</form>
<form action=index>
    <button>go to main menu</button>
</form>
<h1> Table of drivers</h1>
<table class="tg">
    <tr>
        <td>ID</td>
        <td>name</td>
        <td>license_number</td>
        <td>login</td>
        <td></td>
    </tr>
    <c:forEach items="${drivers}" var="driver">
    <tr>
        <td><c:out value="${driver.id}" /></td>
        <td><c:out value="${driver.name}" /></td>
        <td><c:out value="${driver.licenseNumber}"/></td>
        <td><c:out value="${driver.login}"/></td>
        <td><a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.getId()}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
