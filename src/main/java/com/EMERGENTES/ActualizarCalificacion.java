package com.EMERGENTES;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ActualizarCalificacion")
public class ActualizarCalificacion extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener los datos del formulario de edición
        int id = Integer.parseInt(request.getParameter("id"));
        String nombre = request.getParameter("nombre");
        int parcial1 = Integer.parseInt(request.getParameter("parcial1"));
        int parcial2 = Integer.parseInt(request.getParameter("parcial2"));
        int examenFinal = Integer.parseInt(request.getParameter("examenFinal"));
        
        // Actualizar los datos del estudiante en la sesión
        HttpSession session = request.getSession();
        session.setAttribute("nombre" + id, nombre);
        session.setAttribute("parcial1" + id, parcial1);
        session.setAttribute("parcial2" + id, parcial2);
        session.setAttribute("examenFinal" + id, examenFinal);
        
        // Redirigir a la página de mostrar calificaciones
        response.sendRedirect("MostrarCalificaciones.jsp");
    }
}
