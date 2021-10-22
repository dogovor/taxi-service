<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/common.css' %>
    <%@include file='/WEB-INF/views/css/button.css' %>
</style>
<html>
<head>
    <title>Manufacturers</title>
</head>
<body>
<form action=index>
    <button>go to main menu</button>
</form>
<h1>Enter manufacturer's info below</h1>
<form method="post" action="${pageContext.request.contextPath}/manufacturers/add">
    Manufacturer name <label>
    <input type="text" name="name" required="required">
</label>
    Country <label>
    <input type="text" name="country" required="required">
</label>
    <button type="submit">Add manufacturer</button>
    <button type="reset">reset</button>
</form>
</body>
</html>
