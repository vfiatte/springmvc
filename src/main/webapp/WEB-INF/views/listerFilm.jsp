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
                <c:forEach items="${mesFilms}" var="monFilm"> 
                <tr>
                    <td>
                        ${monFilm.id}
                    </td>
                    <td>
                        ${monFilm.titre} 
                    </td>
                    <td>
                        <a href="<c:url value = "/film/modifier"></c:url>/${monfilm.id}">Modifier</a> <br>
                    </td>
                    <td>
                        <a href ="<c:url value="/film/supprimer"></c:url>/${monFilm.id}" > Supprimer </a><br>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <h1></h1>
        
            
            <a href ="<c:url value="/film/ajouter"></c:url>" > Ajouter </a>
    </body>
</html>
