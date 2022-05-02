<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Aviso"%>
<%
    Aviso aviso = (Aviso) request.getAttribute("aviso");
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
        <h1 >Nuevo registro</h1>
        <form action="AvisoController" method="post">
            <input type="hidden" name="id" value="${aviso.id}" />
            <table cellspacing="1" class="table table-success table-striped">
                <tr>
                    <td>Titulo</td>
                    <td><input type="text" name="titulo" value="${aviso.titulo}" /></td>
                </tr>
                <tr>
                    <td>Contenido</td>
                    <td>
                        <textarea name="contenido">${aviso.contenido}</textarea>
                    </td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" /></td>
                </tr>
            </table>
                    </div>
                     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous"></script>
        </form>
     <div style='text-align:center'><button class="btn btn-outline-link"><a  href="index.jsp">Volver</a></button></div>
    </body>
</html>
