<%-- 
    Document   : ajouterGenre
    Created on : 25 mars 2016, 11:11:41
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Ajouter un Genre</h1>
        <form:form modelAttribute="monGenre" id="form" action="modifierPOST" method="post">
            Nom : <form:input path="nom"/>
            <form:hidden path= "id"/>
            <input type="button" value="Modifier" onclick="modifierGenrePost()"/>
        </form:form>
    </body>
</html>
