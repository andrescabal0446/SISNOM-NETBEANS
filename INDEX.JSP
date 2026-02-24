<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SISNOM - Iniciar Sesión</title>
    <link rel="stylesheet" href="styles.css">
</head>
<body>

    <div class="main-layout">

        <!-- ===========================
             MENSAJE DESDE EL SERVLET
           =========================== -->
        <%
            String error = (String) request.getAttribute("error");
            if (error != null) {
        %>
            <div style="text-align:center; margin-bottom:15px;">
                <p style="color:red; font-size:18px;"><%= error %></p>
            </div>
        <% 
            }
        %>

        <!-- ===========================
             CONTENIDO DEL FORMULARIO
             (reutiliza tu diseño original)
           =========================== -->
        <jsp:include page="index.html" />

    </div>

</body>
</html>
