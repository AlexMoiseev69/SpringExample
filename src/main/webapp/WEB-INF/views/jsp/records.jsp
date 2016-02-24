<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>Records</h1>
<c:url var="editImgUrl" value="/resources/core/img/edit.png" />
<c:url var="deleteImgUrl" value="/resources/core/img/delete.png" />
<c:url var="addUrl" value="/HibPerson/add" />
<table style="border: 1px solid; width: 100%; text-align:center">
    <thead style="background:#d3dce3">
    <tr>
        <th>Id</th>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Money</th>
        <th colspan="2"></th>
        <th>CC Type</th>
        <th>CC Number</th>
        <th colspan="3"></th>
    </tr>
    </thead>
    <tbody style="background:#ccc">
    <c:forEach items="${persons}" var="person">
        <c:url var="editUrl" value="/HibPerson/edit?id=${person.id}" />
        <c:url var="deleteUrl" value="/HibPerson/delete?id=${person.id}" />
        <tr>
            <td><c:out value="${person.id}" /></td>
            <td><c:out value="${person.firstName}" /></td>
            <td><c:out value="${person.lastName}" /></td>
            <td><c:out value="${person.money}" /></td>
            <td><a href="${editUrl}"><img src="${editImgUrl}"/></a></td>
            <td><a href="${deleteUrl}"><img src="${deleteImgUrl}"/></a></td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<c:if test="${empty persons}">
    No records found.
</c:if>

<p><a href="${addUrl}">Create new record</a></p>

</body>
</html>