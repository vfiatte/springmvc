<%-- 
    Document   : listerGenre
    Created on : 25 mars 2016, 11:05:05
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
        <h1>Liste des Genres</h1>
        <c:forEach items="${mesGenres}" var="monGenre"> 
           ${monGenre.nom} :  ${monGenre.nom} <br>
        </c:forEach>
        <br>
        <a href ="<c:url value="/genre/ajouter"></c:url>" > Ajouter </a>
    </body>
</html>
