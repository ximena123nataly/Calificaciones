package com.EMERGENTES;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/Session")
public class Session extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Obtener el contador actual de registros
        HttpSession session = request.getSession();
        Integer contador = (Integer) session.getAttribute("contador");
        if (contador == null) {
            contador = 0;
        }

        // Incrementar el contador
        contador++;

        // Obtener los datos del formulario
        String nombre = request.getParameter("nombre");
        int parcial1 = Integer.parseInt(request.getParameter("parcial1"));
        int parcial2 = Integer.parseInt(request.getParameter("parcial2"));
        int examenFinal = Integer.parseInt(request.getParameter("examenFinal"));

        // Guardar los datos en la sesión
        session.setAttribute("nombre" + contador, nombre);
        session.setAttribute("parcial1" + contador, parcial1);
        session.setAttribute("parcial2" + contador, parcial2);
        session.setAttribute("examenFinal" + contador, examenFinal);

        // Actualizar el contador en la sesión
        session.setAttribute("contador", contador);

        // Redirigir a la página de mostrar calificaciones
        response.sendRedirect("MostrarCalificaciones.jsp");
    }
}
