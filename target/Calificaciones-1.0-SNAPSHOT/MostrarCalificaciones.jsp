<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Mostrar Calificaciones</title>
    <style>
        .container {
            width: 50%; /* Ancho del contenedor */
            margin: 0 auto; /* Centrar horizontalmente */
            text-align: center; /* Alinear texto al centro */
            border: 1px solid black; /* Borde del contenedor */
            padding: 20px; /* Espacio interior */
        }
        .title {
            text-align: center; /* Alinear texto al centro */
            margin-bottom: 20px; /* Espacio inferior */
        }
        .registro {
            text-align: left; /* Alinear texto a la izquierda */
            margin-bottom: 20px; /* Espacio inferior */
        }
        table {
            border-collapse: collapse;
            width: 100%;
        }
        th, td {
            border: 1px solid black;
            padding: 8px;
            text-align: left;
        }
        th {
            background-color: #f2f2f2;
        }
    </style>
</head>
<body>
    <div class="container">
        <h3>PRIMER PARCIAL TEM-742</h3>
        <div class="registro">
            <h2>Nombre: Ximena Nataly Alanoca Chino</h2>
            <h2>Carnet : 9093714</h2>
        </div>
    </div>
    <div class="title">
        <h1>Registro de Calificaciones</h1>
    </div>
    <div class="registro">
        <form action="index.jsp">
            <input type="submit" value="Nuevo:">
        </form>
        
        <% 
            // Iterar sobre los 5 registros guardados en la sesión
            Integer contador = (Integer) session.getAttribute("contador");
            if (contador == null) {
                contador = 0;
            }

            for (int i = 1; i <= contador && i <= 5; i++) {
                String nombre = (String) session.getAttribute("nombre" + i);
                int parcial1 = (Integer) session.getAttribute("parcial1" + i);
                int parcial2 = (Integer) session.getAttribute("parcial2" + i);
                int examenFinal = (Integer) session.getAttribute("examenFinal" + i);
                int nota = parcial1 + parcial2 + examenFinal;
        %>
        
        <table>
            <tr>
                <th>ID</th>
                <th>Nombre</th>
                <th>P1 (30)</th>
                <th>P2 (30)</th>
                <th>P3 (40)</th>
                <th>Nota</th>
                <th>Acciones</th>
            </tr>
            <tr>
                <td><%= i %></td>
                <td><%= nombre %></td>
                <td><%= parcial1 %></td>
                <td><%= parcial2 %></td>
                <td><%= examenFinal %></td>
                <td><%= nota %></td>
                <td>
                    <form action="EditarCalificacion.jsp" method="post">
                        <input type="hidden" name="id" value="<%= i %>">
                        <input type="submit" value="Editar">
                    </form>
                    <form action="EliminarCalificacion" method="post">
                        <input type="hidden" name="id" value="<%= i %>">
                        <input type="submit" value="Eliminar">
                    </form>
                </td>
            </tr>
        </table>
        
        <% } %>
    </div>
</body>
</html>
