<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Editar Calificación</title>
</head>
<body>
    <h1>Editar Calificación</h1>
    
    <% 
        // Obtener el ID del registro a editar desde los parámetros de la solicitud
        int id = Integer.parseInt(request.getParameter("id"));
        
        // Obtener los datos del registro correspondiente almacenados en la sesión
        String nombre = (String) session.getAttribute("nombre" + id);
        int parcial1 = (Integer) session.getAttribute("parcial1" + id);
        int parcial2 = (Integer) session.getAttribute("parcial2" + id);
        int examenFinal = (Integer) session.getAttribute("examenFinal" + id);
    %>
    
    <form action="ActualizarCalificacion" method="post">
        <input type="hidden" name="id" value="<%= id %>">
        
        <label for="nombre">Nombre del Estudiante:</label>
        <input type="text" id="nombre" name="nombre" value="<%= nombre %>"><br>

        <label for="parcial1">Primer Parcial (sobre 30 pts):</label>
        <input type="number" id="parcial1" name="parcial1" min="0" max="30" value="<%= parcial1 %>"><br>

        <label for="parcial2">Segundo Parcial (sobre 30 pts):</label>
        <input type="number" id="parcial2" name="parcial2" min="0" max="30" value="<%= parcial2 %>"><br>

        <label for="examenFinal">Examen Final (sobre 40 pts):</label>
        <input type="number" id="examenFinal" name="examenFinal" min="0" max="40" value="<%= examenFinal %>"><br>
            
        <input type="submit" value="Actualizar">
    </form>
</body>
</html>

