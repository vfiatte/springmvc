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
        <table>
            <thead>
                <tr>
                    <td>
                        Numero
                    </td>
                    <td>
                        Titre
                    </td>
                    <td colspan="2">
                        Actions
                    </td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${mesGenres}" var="monGenre"> 
                <tr>
                    <td>
                        ${monGenre.id}
                    </td>
                    <td>
                        ${monGenre.nom}
                    </td>
                    <td>
                        <a href ="<c:url value="/genre/modifier"></c:url>/${monGenre.id}" > Modifier </a>
                    </td>
                    <td>
                        <a href ="<c:url value="/genre/supprimer"></c:url>/${monGenre.id}" > Supprimer </a><br>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
        <a href ="<c:url value="/genre/ajouter"></c:url>" > Ajouter </a>
    </body>
</html>
