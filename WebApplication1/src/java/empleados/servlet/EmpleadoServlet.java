package empleados.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/EmpleadoServlet")
public class EmpleadoServlet extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String accion = req.getParameter("accion");

        if (accion == null) accion = "listar";

        switch (accion) {

            case "listar":
                req.getRequestDispatcher("empleado.jsp").forward(req, resp);
                break;

            case "nuevo":
                req.getRequestDispatcher("empleado_form.jsp").forward(req, resp);
                break;

            case "editar":
                req.getRequestDispatcher("empleado_form.jsp").forward(req, resp);
                break;

            case "eliminar":
                // Aquí irá la lógica de eliminación
                resp.sendRedirect("EmpleadoServlet?accion=listar");
                break;

            default:
                resp.sendRedirect("EmpleadoServlet?accion=listar");
                break;
        }
    }

    
    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String accion = req.getParameter("accion");

        switch (accion) {
            case "guardar":
                // Guardar datos del empleado nuevo
                resp.sendRedirect("EmpleadoServlet?accion=listar");
                break;

            case "actualizar":
                // Actualizar datos del empleado existente
                resp.sendRedirect("EmpleadoServlet?accion=listar");
                break;

            default:
                resp.sendRedirect("EmpleadoServlet?accion=listar");
                break;
        }
    }
}