<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
    <%@include file='/WEB-INF/views/css/button.css' %>
    <%@include file='/WEB-INF/views/css/common.css' %>
</style>
<head>
    <title>taxi service</title>
</head>
<body>
<h1>Work with taxi service</h1>
<form action="cars"><button>WORK WITH CARS</button></form>
<form action="drivers"><button>WORK WITH DRIVERS</button></form>
<form action="manufacturers"><button>WORK WITH MANUFACTURERS</button></form>
<form action="/cars/drivers/current"><button>MY CURRENT CARS</button></form>
</body>
</html>
