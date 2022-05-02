<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="java.util.List"%>
<%@page import="com.emergentes.modelo.Usuario"%>
<%
    List<Usuario> usuarios = (List<Usuario>) request.getAttribute("usuarios");
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
            <h1 >Listado de usuarios</h1>
            <a class="btn btn-dark" href="UsuarioController?action=add">Nuevo</a>
            <table cellspacing="1" border="1" class="table table-success table-striped">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Correo</th>
                    <th>Clave</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach var="item" items="${usuarios}">
                    <tr>
                        <td>${item.id}</td>
                        <td>${item.nombre}</td>
                        <td>${item.correo}</td>
                        <td>${item.clave}</td>
                        <td><a class="btn btn-primary" href="UsuarioController?action=edit&id=${item.id}">Editar</a></td>
                        <td><a class="btn btn-danger"href="UsuarioController?action=delete&id=${item.id}">Eliminar</a></td>
                    </tr>              
                </c:forEach>
            </table>
        </div>
        <div style='text-align:center'><button class="btn btn-outline-link"><a  href="index.jsp">Volver</a></button></div>
       
    </body>
</html>
