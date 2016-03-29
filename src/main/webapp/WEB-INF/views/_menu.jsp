<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<table>
    <tr>
        <td colspan="3">
            <img src="<c:url value="resources/CSS/image/QjO7OANsyMArsW4ce2jjX1rlOrM.png"/>" alt=""/>
        </td>
    </tr>
    <tr>
        <td class="span">
            <span type="button" onclick ="listerFilm()" value="Films">Films</span>
        </td>
        <td class="span">
            <span type="button" onclick ="listerGenre()" value="Genre">Genres</span>
        </td>
        <td class="span">
            <span type="button" onclick ="listerPays()" value="Pays">Pays</span>
        </td>
    </tr>
</table>