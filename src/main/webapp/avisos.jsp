<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    List<Aviso> avisos = (List<Aviso>) request.getAttribute("avisos");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
       <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    </head>
    <body>
        <div class="container">
            <h1 >Listado de avisos</h1>
            <a class="btn btn-dark" href="AvisoController?action=add">Nuevo</a>
            <table cellspacing="1" border="1" class="table table-success table-striped">
                <tr>
                    <th>Id</th>
                    <th>Titulo</th>
                    <th>Contenido</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${avisos}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.titulo}</td>
                        <td>${item.contenido}</td>
                        <td><a class ="btn btn-primary" href="AvisoController?action=edit&id=${item.id}">Editar</a></td>
                        <td><a class="btn btn-danger" href="AvisoController?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>              
                </c:forEach>
            </table>
        </div>
        
<div style='text-align:center'><button class="btn btn-outline-link"><a  href="index.jsp">Volver</a></button></div>
 
    </body>
</html>
