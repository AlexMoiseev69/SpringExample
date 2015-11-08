<%--
  Created by IntelliJ IDEA.
  User: amois_000
  Date: 11/8/2015
  Time: 2:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Project by AlexMoiseev69</title>
    <spring:url value="/resources/core/css/hello.css" var="coreCss" />
    <spring:url value="/resources/core/css/bootstrap.min.css" var="bootstrapCss" />
    <link href="${bootstrapCss}" rel="stylesheet" />
    <link href="${coreCss}" rel="stylesheet" />
</head>

<nav class="navbar navbar-inverse navbar-fixed-top">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="/hello">Example parameter in link</a>
        </div>
        <div class="navbar-header">
            <a class="navbar-brand" href="/login">Example Login</a>
        </div>
    </div>
</nav>

<div class="jumbotron">
    <div class="container">
        <h1>HELLO</h1>
    </div>
</div>

<div class="container">
    <hr>
    <footer>
        <p>&copy; Alexander Moiseev 2015</p>
    </footer>
</div>

<spring:url value="/resources/core/css/hello.js" var="coreJs" />
<spring:url value="/resources/core/css/bootstrap.min.js" var="bootstrapJs" />

<script src="${coreJs}"></script>
<script src="${bootstrapJs}"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

</body>
</html>
