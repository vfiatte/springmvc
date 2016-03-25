<%-- 
    Document   : ajouterFilm
    Created on : 25 mars 2016, 11:35:55
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
    <body>Ajouter un Film!</h1>
        <form:form modelAttribute="monFilm" action="ajouterPost" method="post">
        Titre : <form:input path="titre"/>
        Annee : <form:input path="annee"/>
        Synopsis : <form:input path="synopsis"/>
        Genre : <form:select path="genreFilm.id">
            <form:options items="${mesGenres}" itemLabel="nom" itemValue="id"></form:options>
        </form:select>
        <input type="submit"/>
    </form:form>
</body>
</html>
