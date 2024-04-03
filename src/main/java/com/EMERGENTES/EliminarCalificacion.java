package com.EMERGENTES;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/EliminarCalificacion")
public class EliminarCalificacion extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener el ID del registro a eliminar desde los parámetros de la solicitud
        int id = Integer.parseInt(request.getParameter("id"));
        
        // Eliminar los datos del registro correspondiente de la sesión
        HttpSession session = request.getSession();
        session.removeAttribute("nombre" + id);
        session.removeAttribute("parcial1" + id);
        session.removeAttribute("parcial2" + id);
        session.removeAttribute("examenFinal" + id);
        
        // Redirigir a la página de mostrar calificaciones
        response.sendRedirect("MostrarCalificaciones.jsp");
    }
}
