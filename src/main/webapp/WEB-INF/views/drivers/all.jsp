<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<style>
    <%@include file='/WEB-INF/views/css/table_dark.css' %>
</style>
<html>
<head>
    <title>All drivers</title>
</head>
<body>
<%@include file="../header.jsp"%>
<h1 class="table_dark">All drivers:</h1><br />
<table class="table_dark">
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>License number</th>
        <th>Login</th>
        <th></th>
    </tr>
    <c:forEach var="driver" items="${drivers}">
        <tr>
            <td>
                <c:out value="${driver.id}"/>
            </td>
            <td>
                <c:out value="${driver.name}"/>
            </td>
            <td>
                <c:out value="${driver.licenseNumber}"/>
            </td>
            <td>
                <c:out value="${driver.login}"/>
            </td>
            <td>
                <a href="${pageContext.request.contextPath}/drivers/delete?id=${driver.id}">
                    <input type="button" value="DELETE">
                </a>
            </td>
        </tr>
    </c:forEach>
</table>
</body>
</html>