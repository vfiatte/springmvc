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
        <h1>Modifier un Film</h1>
        <form:form modelAttribute="monFilm" id="form" action="film/modifierPost/${monFilm.id}" method="post">
            <form:hidden path="id"/>
            Titre : <form:input path="titre"/>
            Annee : <form:input path="annee"/>
            Synopsis : <form:input path="synopsis"/>
            Pays : <form:select path="paysFilm.id">
                <form:options items="${mesPays}" itemLabel="nom" itemValue="id"></form:options>
            </form:select>
            Genre : <form:select path="genreFilm.id">
                <form:options items="${mesGenres}" itemLabel="nom" itemValue="id"></form:options>
            </form:select>
            <input type="button" value="Modifier" onclick="modifierFilmPost()"/>
        </form:form>
    </body>
</html>
