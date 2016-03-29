<%-- 
    Document   : listerFilm
    Created on : 25 mars 2016, 10:41:47
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Liste de vos films</h1>
        <table class="body">
            <thead>
                <tr>
                    <td>
                        Annee
                    </td>
                    <td>
                        Titre
                    </td>
                    <td>
                        Pays
                    </td>
                    <td>
                        Genre
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
                        ${monFilm.annee}
                    </td>
                    <td>
                        ${monFilm.titre} 
                    </td>
                    <td>
                        ${monFilm.paysFilm.nom} 
                    </td>
                    <td>
                        ${monFilm.genreFilm.nom} 
                    </td>
                    <td>
                        <input type="button" onclick ="modifierFilm(${monFilm.id})" value="Modifier"/>
                    </td>
                    <td>
                        <input type="button" onclick ="supprimerFilm(${monFilm.id})" value="Supprimer"/><br>
                    </td>
                    
                </tr>
                </c:forEach>
            </tbody>
        </table>
        <h1></h1>
        
            
            <input type="button" onclick ="ajouterFilm()" value="Ajouter"/>
            <input type="button" onclick ="init()" value="Home"/>
    </body>
</html>
