
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    </head>
    <body>
        <%@ include file="../layouts/nav-layout.jsp" %>
        <section class="sectionForm">
            <div class="container">
                <div class="title">
                    <p>Cliente</p>
                </div>

                <form action="#">
                    <div class="user_details">
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
                            <label for="pass">Fecha de Nacimiento</label>
                            <input type="date" id="Tamaño" placeholder="" required>
                        </div>
                        <div class="input_box">
                            <label for="">Direccion</label>
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
        </section>

    </body>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@100;200;300;400;500;600;700&display=swap');

        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        body{

            min-height: 100vh;
            background: #f6f8fa;
            font-family: 'Poppins', sans-serif;
        }
        
        .sectionForm{
            display:flex;
            justify-content: center;
           margin-top: 50px;
        }

        .container{
            max-width: 700px;
            width: 100%;
            background: #ffffff;
            border-radius: 0.5rem;
            box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.1),
                0px 5px 12px -2px rgba(0, 0, 0, 0.1),
                0px 18px 36px -6px rgba(0, 0, 0, 0.1);
            overflow: hidden;
            margin: 10px;
        }

        .container .title{
            padding: 25px;
            background: #f6f8fa;
        }

        .container .title p{
            font-size: 25px;
            font-weight: 500;
            position: relative;
        }

        .container .title p::before{
            content: "";
            position: absolute;
            bottom: 0;
            left: 0;
            width: 30px;
            height: 3px;
            background: linear-gradient(to right, #F37A65);
        }

        .user_details{
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            gap: 20px;
            padding: 25px;
        }

        .user_details .input_box{
            width: calc(100% / 2 - 20px);
            margin: 0 0 12px 0;
        }

        .input_box label{
            font-weight: 500;
            margin-bottom: 5px;
            display: block;
        }

        .input_box input{
            width: 100%;
            height: 45px;
            border: none;
            outline: none;
            border-radius: 5px;
            font-size: 16px;
            padding-left: 15px;
            box-shadow: 0px 0px 0px 1px rgba(0, 0, 0, 0.1);
            background-color: #f6f8fa;
            font-family: 'Poppins', sans-serif;
            transition: all 120ms ease-out 0s;
        }


        .input_box input:focus,
        .input_box input:valid{
            box-shadow: 0px 0px 0px 2px #AC8ECE;
        }

        form .gender{
            padding: 0px 25px;
        }

        .gender .gender_title{
            font-size: 20px;
            font-weight: 500;
        }

        .gender .category{
            width: 80%;
            display: flex;
            justify-content: space-between;
            margin: 5px 0;
        }

        .gender .category label{
            display: flex;
            align-items: center;
            cursor: pointer;
        }

        .gender .category label .dot{
            height: 18px;
            width: 18px;
            background: #d9d9d9;
            border-radius: 50%;
            margin-right: 10px;
            border: 4px solid transparent;
            transition: all 0.3s ease;
        }

        #radio_1:checked ~ .category label .one,
        #radio_2:checked ~ .category label .two,
        #radio_3:checked ~ .category label .three{
            border-color: #d9d9d9;
            background: #D64141;
        }

        .gender input{
            display: none;
        }

        .reg_btn{
            padding: 25px;
            margin: 15px 0;
        }

        .reg_btn input{
            height: 45px;
            width: 100%;
            border: none;
            font-size: 18px;
            font-weight: 500;
            cursor: pointer;
            background: linear-gradient(to right, #F37A65, #D64141);
            border-radius: 5px;
            color: #ffffff;
            letter-spacing: 1px;
            text-shadow: 0px 2px 2px rgba(0, 0, 0, 0.2);
        }

        .reg_btn input:hover{
            background: linear-gradient(to right, #D64141, #F37A65);
        }

    </style>
</html>
