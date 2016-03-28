<%-- 
    Document   : home
    Created on : 24 mars 2016, 11:50:55
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
        <h1>Hello World!</h1>
        <a href ="<c:url value="/film/lister"></c:url>" > Liste Films </a> <br>
        <a href ="<c:url value="/genre/lister"></c:url>" > Liste Genres </a> <br>
        <a href ="<c:url value="/pays/lister"></c:url>" > Liste Pays </a>
    </body>
</html>
