<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>JSP Page</title>
    <style>
        .box {
            border: 1px solid black;
            padding: 20px;
            width: 300px;
            margin: 0 auto; /* Centrar horizontalmente */
        }
        .title {
            text-align: center;
        }
        .registro {
            margin: 0 auto; /* Centrar horizontalmente */
            width: 300px; /* Ancho del cuadro de registro */
            padding: 20px;
            border: 1px solid black;
        }
        .registro label {
            display: block; /* Mostrar las etiquetas en una nueva línea */
            margin-bottom: 10px; /* Espacio entre etiquetas y campos de entrada */
        }
        .registro input[type="text"],
        .registro input[type="number"] {
            width: calc(100% - 10px); /* Ancho del campo de entrada */
            margin-bottom: 10px; /* Espacio entre campos de entrada */
        }
        .submit-button {
            width: 100px; /* Ancho del botón */
            margin: 20px auto; /* Centrar horizontalmente y agregar espacio vertical */
            display: block; /* Hacer que el botón ocupe todo el ancho disponible */
        }
    </style>
</head>
<body>
    <div class="box">
         <h3>PRIMER PARCIAL TEM-742</h3>
        <h2>Nombre: Ximena Nataly Alanoca Chino</h2>
        <h2>Carnet : 9093714</h2>
    </div>
    <div class="title">
        <h1>Registro de Calificaciones</h1>
    </div>
    
    <div class="registro">
        <form action="Session" method="post">
            <label for="nombre">Nombre del Estudiante:</label>
            <input type="text" id="nombre" name="nombre"><br>

            <label for="parcial1">Primer Parcial (sobre 30 pts):</label>
            <input type="number" id="parcial1" name="parcial1" min="0" max="30"><br>

            <label for="parcial2">Segundo Parcial (sobre 30 pts):</label>
            <input type="number" id="parcial2" name="parcial2" min="0" max="30"><br>

            <label for="examenFinal">Examen Final (sobre 40 pts):</label>
            <input type="number" id="examenFinal" name="examenFinal" min="0" max="40"><br>
            
            <input type="submit" value="ENVIAR" class="submit-button">
        </form>
    </div>
</body>
</html>