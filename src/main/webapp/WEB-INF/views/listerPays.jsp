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
        <h1>Liste des Pays</h1>
        <table>
            <thead>
                <tr>
                    <td>
                        Numero
                    </td>
                    <td>
                        Nom
                    </td>
                    <td colspan="2">
                        Actions
                    </td>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${mesPays}" var="monPays"> 
                <tr>
                    <td>
                        ${monPays.id}
                    </td>
                    <td>
                        ${monPays.nom}
                    </td>
                    <td>
                        <a href ="<c:url value="/pays/modifier"></c:url>/${monPays.id}" > Modifier </a>
                    </td>
                    <td>
                        <a href ="<c:url value="/pays/supprimer"></c:url>/${monPays.id}" > Supprimer </a><br>
                    </td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <br>
        <a href ="<c:url value="/pays/ajouter"></c:url>" > Ajouter </a>
        <a href ="<c:url value="/"></c:url>" > HomePage </a>
    </body>
</html>

