<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>SISNOM</title>
    <script src="https://cdn.tailwindcss.com?plugins=forms,container-queries"></script>
    <link rel="stylesheet" href="administrador.css">
</head>
<body>

    <div class="main-wrapper">
        <div class="layout-container">

            <!-- ========== SIDEBAR ========== -->
            <aside class="sidebar">
                <div class="sidebar-header">
                    <h2 class="sidebar-title">Menú Principal</h2>
                </div>

                <nav class="nav-menu">

                    <!-- DASHBOARD -->
                    <a href="AdministradorServlet?accion=dashboard" class="nav-link">
                        <div class="icon-container">
                            <!-- icon -->
                        </div>
                        <span class="link-text">Dashboard</span>
                    </a>

                    <!-- EMPLEADOS -->
                    <a href="EmpleadoServlet?accion=listar" class="nav-link">
                        <div class="icon-container">
                            <!-- icon -->
                        </div>
                        <span class="link-text">Empleados</span>
                    </a>

                    <!-- NÓMINA -->
                    <a href="NominaServlet?accion=listar" class="nav-link">
                        <div class="icon-container">
                            <!-- icon -->
                        </div>
                        <span class="link-text">Nómina</span>
                    </a>

                    <!-- INFORMES -->
                    <a href="InformeServlet?accion=listar" class="nav-link">
                        <div class="icon-container">
                            <!-- icon -->
                        </div>
                        <span class="link-text">Informes</span>
                    </a>

                    <!-- SISTEMA -->
                    <a href="administrador.jsp" class="nav-link active">
                        <div class="icon-container">
                            <!-- icon -->
                        </div>
                        <span class="link-text">Sistema</span>
                    </a>
                </nav>

                <div class="sidebar-footer">
                    <!-- AÑADIR EMPLEADO -->
                    <a href="EmpleadoServlet?accion=nuevo" class="btn-primary full-width text-center block">
                        Añadir empleado
                    </a>

                    <!-- AYUDA -->
                    <a href="ayuda.jsp" class="nav-link">
                        <div class="icon-container"></div>
                        <span class="link-text">Ayuda</span>
                    </a>
                </div>
            </aside>


            <!-- ========== CONTENIDO PRINCIPAL ========== -->
            <main class="content-area">

                <header class="content-header">
                    <h1 class="main-page-title">Sistema</h1>
                </header>

                <section class="management-section">
                    <h2 class="section-subtitle">Gestión del Sistema</h2>

                    <div class="cards-grid">

                        <!-- CARD 1 -->
                        <div class="info-card">
                            <div class="card-header">
                                <div class="card-icon"></div>
                                <h3 class="card-title">Configuración de la empresa</h3>
                            </div>
                            <p class="card-description">Configura los detalles de tu empresa.</p>
                        </div>

                        <!-- CARD 2 -->
                        <div class="info-card">
                            <div class="card-header">
                                <div class="card-icon"></div>
                                <h3 class="card-title">Roles y permisos</h3>
                            </div>
                            <p class="card-description">Define roles de usuarios y permisos.</p>
                        </div>

                        <!-- CARD 3 -->
                        <div class="info-card">
                            <div class="card-header">
                                <div class="card-icon"></div>
                                <h3 class="card-title">Seguridad y auditoría</h3>
                            </div>
                            <p class="card-description">Supervisa actividad del sistema.</p>
                        </div>
                    </div>
                </section>

                <footer class="action-footer">
                    <button class="btn-secondary">Cancelar</button>
                    <button class="btn-primary px-wide">Guardar</button>
                </footer>
            </main>

        </div>
    </div>

</body>
</html>