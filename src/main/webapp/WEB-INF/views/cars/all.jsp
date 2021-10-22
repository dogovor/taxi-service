<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/button.css' %>
    <%@include file='/WEB-INF/views/css/common.css' %>
</style>
<html>
<head>
    <title>All cars</title>
</head>
<body>
<p style="text-align: left">
<form action=cars/add>
    <button>create new car</button>
</form>
<form action=cars/drivers/add>
    <button>add driver to car</button>
</form>
<form action=index>
    <button>go to main menu</button>
</form>
<h1>cars with drivers</h1>
<table>
    <tr>
        <td>ID</td>
        <td>Model</td>
        <td>Manufacturer name</td>
        <td>Manufacturer country</td>
        <td>Drivers</td>
        <td></td>
    </tr>
    <c:forEach items="${cars}" var="car">
    <tr>
        <td><c:out value="${car.id}" /></td>
        <td><c:out value="${car.model}" /></td>
        <td><c:out value="${car.manufacturer.name}" /></td>
        <td><c:out value="${car.manufacturer.country}"/></td>
        <td>
            <table>
                <tr>
                    <td>name</td>
                    <td>license_number</td>
                    <td>login</td>
                </tr>
                <c:forEach items="${car.getDrivers()}" var="driver">
                <tr>
                    <td><c:out value="${driver.getName()}"/></td>
                    <td><c:out value="${driver.getLicenseNumber()}"/></td>
                    <td><c:out value="${driver.getLogin()}"/></td>
                    </c:forEach>
                </tr>
            </table>
        </td>
        <td><a href="${pageContext.request.contextPath}/cars/delete?id=${car.getId()}">delete</a></td>
        </c:forEach>
    </tr>
</table>
</body>
</html>
