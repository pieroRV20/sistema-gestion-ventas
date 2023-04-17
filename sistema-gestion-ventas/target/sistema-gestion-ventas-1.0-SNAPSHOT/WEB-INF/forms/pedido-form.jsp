<%-- 
    Document   : pedido-form
    Created on : 16 abr. 2023, 15:42:13
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="container">
            <div class="title">
                <p>Pedido</p>
            </div>
            <form action="#">
                <div class="user_details">
                    <div class="input_box">
                        <label for="name">ID</label>
                        <input type="text" id="ID" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="name">ID Cliente</label>
                        <input type="text" id="id oferta" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="">Fecha</label>
                        <input type="date" id="Tamaño" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="">Estado</label>
                        <input type="" id="" placeholder="" required>
                    </div>
                </div>
                <div class="reg_btn">
                    <input type="submit" value="Registrar">
                </div>
            </form>
        </div>
    </body>
</html>
