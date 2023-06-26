package Repositorio;
import modelo.Usuario;
import java.io.Serializable;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UsuarioDAO implements Serializable {
    private Connection conexion;

    // Constructor que recibe la conexión a la base de datos
    public UsuarioDAO(Connection conexion) {
        this.conexion = conexion;
    }

    public void agregarUsuario(Usuario usuario) {
        String consulta = "INSERT INTO usuarios (nombre, email, password) VALUES (?, ?, ?)";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getEmail());
            statement.setString(3, usuario.getPassword());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void actualizarUsuario(Usuario usuario) {
        String consulta = "UPDATE usuarios SET nombre = ?, email = ?, password = ? WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, usuario.getNombre());
            statement.setString(2, usuario.getEmail());
            statement.setString(3, usuario.getPassword());
            statement.setInt(4, usuario.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void eliminarUsuario(int id) {
        String consulta = "DELETE FROM usuarios WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public Usuario obtenerUsuario(int id) {
        String consulta = "SELECT id, nombre, email, password FROM usuarios WHERE id = ?";
        Usuario usuario = null;

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setNombre(resultSet.getString("nombre"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setPassword(resultSet.getString("password"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return usuario;
    }

    public List<Usuario> obtenerTodosUsuarios() {
        String consulta = "SELECT id, nombre, email, password FROM usuarios";
        List<Usuario> lista = new ArrayList<>();

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Usuario usuario = new Usuario();
                usuario.setId(resultSet.getInt("id"));
                usuario.setNombre(resultSet.getString("nombre"));
                usuario.setEmail(resultSet.getString("email"));
                usuario.setPassword(resultSet.getString("password"));
                lista.add(usuario);
            }
        } catch (SQLException e) {
        }
        return lista;
    }

    public Usuario verificarCredenciales(String username, String password) {
        // Aquí debes agregar la lógica para verificar las credenciales del usuario
        // Puedes realizar una consulta a la base de datos o cualquier otro método de autenticación

        // Ejemplo de implementación básica que compara un usuario "admin" y una contraseña "admin"
        if (username.equals("caceron@mail.cl") && password.equals("admin")) {
            Usuario usuario = new Usuario();
            usuario.setNom(username);
            return usuario;
        }

        return null;
    }
}