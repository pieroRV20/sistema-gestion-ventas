
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@ include file="../layouts/head-layout.jsp" %>
    <body>
        <%@ include file="../layouts/nav-layout.jsp" %>
        <div class="container">
            <div class="title">
                <p>Cliente</p>
            </div>

            <form action="#">
                <div class="user_details">
                    <div class="input_box">
                        <label for="name">ID</label>
                        <input type="text" id="ID" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="name">Nombre</label>
                        <input type="text" id="id oferta" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="email">Apellido</label>
                        <input type="email" id="Stock" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="phone">Correo Electronico</label>
                        <input type="number" id="Precio" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="pass">Cumpleaños</label>
                        <input type="date" id="Tamaño" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="">Direccion</label>
                        <input type="" id="pass" placeholder="" required>
                    </div>
                    <div class="input_box">
                        <label for="">id usuario</label>
                        <input type="" id="pass" placeholder="" required>
                    </div>
                </div>
                <div class="gender">
                    <span class="gender_title">Tipo documento</span>
                    <input type="radio" name="gender" id="radio_1">
                    <input type="radio" name="gender" id="radio_2">


                    <div class="category">
                        <label for="radio_1">
                            <span class="dot one"></span>
                            <span>DNI</span>
                        </label>
                        <label for="radio_2">
                            <span class="dot two"></span>
                            <span>Pasaporte</span>
                        </label>
                    </div>
                </div>
                <div class="reg_btn">
                    <input type="submit" value="Registrar">
                </div>
            </form>
        </div>
    </body>
</html>
