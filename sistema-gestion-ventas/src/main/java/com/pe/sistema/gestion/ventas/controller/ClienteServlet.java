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
public class ClienteServlet extends HttpServlet {

    private static final long serialVersionUID = 1L;


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String page = request.getParameter("accion");
 
        if (null == page) {
            RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/views/clientes-view.jsp");
            dispatcher.forward(request, response);
        } else switch (page) {
            case "nuevo":
                {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/forms/cliente-form.jsp");
                    dispatcher.forward(request, response);
                    break;
                }
            case "editarCliente":
                {
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/editarCliente.jsp");
                    dispatcher.forward(request, response);
                    break;
                }
        }
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String accion = request.getParameter("accion"); // Obtiene la acción que se debe realizar

        if (accion != null) {
            switch (accion) {
                case "nuevo":
                    // Muestra la página JSP para agregar un nuevo cliente
                    RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/forms/cliente-form.jsp");
                    dispatcher.forward(request, response);
                    break;
                case "eliminar":
                    // Obtiene el ID del cliente a eliminar
                    //int idCliente = Integer.parseInt(request.getParameter("idCliente"));

                    // Elimina el cliente de la base de datos
                    //clienteDAO.eliminarCliente(idCliente);

                    // Redirige a la página principal para mostrar la lista actualizada de clientes
                    //response.sendRedirect(request.getContextPath() + "/ClientesServlet");
                    break;
                default:
                    // Si se recibe una acción no reconocida, se muestra la página JSP de la lista de clientes
                    doGet(request, response);
                    break;
            }
        } else {
            // Si no se recibe una acción, se muestra la página JSP de la lista de clientes
            doGet(request, response);
        }
    }
}
