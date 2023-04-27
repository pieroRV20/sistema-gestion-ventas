

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
     <%@ include file="../layouts/head-layout.jsp" %>
    <body>
        <%@ include file="../layouts/nav-layout.jsp" %>
        
        <section class="container-lg">
            <h2 class="mt-4">Productos</h2>
            <nav class="navbar bg-light d-flex justify-content-center mb-3">
                <form class="d-flex w-50" role="search">
                    <input class="form-control me-2 w-100" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success"  type="submit">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-search" viewBox="0 0 16 16">
                        <path d="M11.742 10.344a6.5 6.5 0 1 0-1.397 1.398h-.001c.03.04.062.078.098.115l3.85 3.85a1 1 0 0 0 1.415-<h2>Clientes</h2>1.414l-3.85-3.85a1.007 1.007 0 0 0-.115-.1zM12 6.5a5.5 5.5 0 1 1-11 0 5.5 5.5 0 0 1 11 0z"/>
                        </svg>
                    </button>
                </form>
            </nav>
            <table class="table border mt-4">
                <thead >
                    <tr>
                        <th style="background-color: #c57d56;">Codigo</th>
                        <th style="background-color: #c57d56;">Producto</th>
                        <th style="background-color: #c57d56;">Precio</th>
                        <th style="background-color: #c57d56;">Categoria</th>
                        <th style="background-color: #c57d56;">Stock</th>
                        <th style="background-color: #c57d56;">Acciones</th>
                    </tr>
                </thead>
                <tbody>
                    <tr th:each="producto: ${productos}">
                        <td>123456</td>
                        <td>Polo Manga Larga</td>
                        <td>S/23</td>
                        <td>Varon</td>
                        <td>50</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductoServlet?accion=editar" class="btn btn-primary">Editar</a>
                            <a href="${pageContext.request.contextPath}/ProductoServlet?accion=eliminar" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                    <tr th:each="producto: ${productos}">
                        <td>1234512</td>
                        <td>Pantalon Jean</td>
                        <td>S/45</td>
                        <td>Dama</td>
                        <td>100</td>
                        <td>
                            <a href="${pageContext.request.contextPath}/ProductoServlet?accion=editar" class="btn btn-primary">Editar</a>
                            <a href="${pageContext.request.contextPath}/ProductoServlet?accion=eliminar" class="btn btn-danger">Eliminar</a>
                        </td>
                    </tr>
                </tbody>
            </table>
            <a class="btn btn-success mt-4" href="${pageContext.request.contextPath}/ProductoServlet?accion=nuevo">Registrar</a>
        </section>
        <%@ include file="../layouts/footer-layout.jsp" %>
    </body>
</html>
