<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/button.css' %>
    <%@include file='/WEB-INF/views/css/common.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<form action=index>
    <button>go to main menu</button>
</form>
<h1>Enter driver's info below</h1>
<form method="post" action="${pageContext.request.contextPath}/drivers/add">
    Driver name <label>
    <input type="text" name="name" required="required">
</label>
    License Number <label>
    <input type="text" name="license_number" required="required">
</label>
    Login <label>
    <input type="text" name="login" required="required">
</label>
    Password <label>
    <input type="password" name="password" required="required">
</label>
    <button type="submit">Add driver</button>
    <button type="reset">reset</button>
</form>
</body>
</html>
