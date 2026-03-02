import java.io.IOException;
import java.sql.*;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.*;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String usuario = request.getParameter("email");
        String password = request.getParameter("password");

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection conn = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/sisnom",
                "root",
                "123456"
            );

            PreparedStatement ps = conn.prepareStatement(
                "SELECT * FROM usuario WHERE correo=? AND contraseña=?"
            );
            ps.setString(1, usuario);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                response.sendRedirect("administrador.jsp");
            } else {
                response.sendRedirect("index.html?error=1");
            }

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}