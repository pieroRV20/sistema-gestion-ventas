
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="../layouts/head-layout.jsp" %>
    <body>
        <%@ include file="../layouts/nav-layout.jsp" %>

        <section class="container w-50 mt-5">
            <h2 class="mt-3" >Registro Producto</h2>
            <form class="row" th:action="@{/producto-save}" method="post">
                <div class="col">
                    <div class="row mb-3 mt-5">
                        <div class="col">
                            <label class="form-label">Nombre</label> 
                            <input class="form-control" type="text" /> 
                            <div class="alert alert-danger mt-2" role="alert">Nombre Invalido</div>
                        </div>
                        <div class="col">
                            <label class="form-label">Categoria</label> 
                            <select class="form-select form-select-lg mb-3" aria-label=".form-select-lg example">
                                <option selected>Open this select menu</option>
                                <option value="1">One</option>
                                <option value="2">Two</option>
                                <option value="3">Three</option>
                            </select>
                        </div>
                    </div>

                    <div class="row mb-3 mt-5">
                        <div class="col">
                            <label class="form-label">Precio</label> 
                            <input class="form-control" type="number"/> 
                            <div class="alert alert-danger mt-2" role="alert">Precio invalido</div>
                        </div>
                        <div class="col">
                            <label class="form-label">Stock</label> 
                            <input class="form-control" type="number" /> 
                             <div class="alert alert-danger mt-2" role="alert">Sock invalido</div>
                        </div>
                    </div>

                    <div class="form-group">
                        <label class="form-label">Descripcion</label>
                        <textarea class="form-control"></textarea>
                    </div>

                    <input type="submit"
                           class="form-control btn btn-secondary mt-4 w-25"
                           name="login-submit" id="login-submit" value="Enviar" />
                </div>
            </form>
        </section>
        <%@ include file="../layouts/footer-layout.jsp" %>
    </body>
</html>
