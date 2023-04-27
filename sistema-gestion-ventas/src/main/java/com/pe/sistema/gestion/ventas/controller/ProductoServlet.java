/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package com.pe.sistema.gestion.ventas.controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Piero
 */
public class ProductoServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page = request.getParameter("accion");
 
        if (null == page) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/productos-view.jsp");
            dispatcher.forward(request, response);
        } else switch (page) {
            case "nuevo":
                {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/forms/producto-form.jsp");
                    dispatcher.forward(request, response);
                    break;
                }
            case "editar":
                {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/editarCliente.jsp");
                    dispatcher.forward(request, response);
                    break;
                }
        }
        
    }

}
