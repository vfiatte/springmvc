<%-- 
    Document   : listerFilm
    Created on : 25 mars 2016, 10:41:47
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste de vos films</h1>
        <c:forEach items="${mesFilms}" var="monFilm"> 
            ${monFilm.titre} <a href="<c:url value = "/film/"></c:url>/${monfilm.id}">Modifier</a> <br>
        </c:forEach>
            <a href ="<c:url value="/film/ajouter"></c:url>" > Ajouter </a>
    </body>
</html>
