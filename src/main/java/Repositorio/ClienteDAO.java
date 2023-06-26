package Repositorio;

import modelo.Cliente;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface ClienteDAO {
    void agregarCliente(Cliente cliente);
    void actualizarCliente(Cliente cliente);
    void eliminarCliente(int id);
    Cliente obtenerCliente(int id);
    List<Cliente> obtenerTodosClientes();
}

class ClienteDAOImpl implements ClienteDAO {
    private Connection conexion;

    // Constructor que recibe la conexión a la base de datos
    public ClienteDAOImpl(Connection conexion) {
        this.conexion = conexion;
    }

    @Override
    public void agregarCliente(Cliente cliente) {
        String consulta = "INSERT INTO clientes (id, nombre, email, telefono) VALUES (?, ?, ?, ?)";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, cliente.getId());
            statement.setString(2, cliente.getNombre());
            statement.setString(3, cliente.getEmail());
            statement.setString(4, cliente.getTelefono());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void actualizarCliente(Cliente cliente) {
        String consulta = "UPDATE clientes SET nombre = ?, email = ?, telefono = ? WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setString(1, cliente.getNombre());
            statement.setString(2, cliente.getEmail());
            statement.setString(3, cliente.getTelefono());
            statement.setInt(4, cliente.getId());
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public void eliminarCliente(int id) {
        String consulta = "DELETE FROM clientes WHERE id = ?";

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);
            statement.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public Cliente obtenerCliente(int id) {
        String consulta = "SELECT id, nombre, email, telefono FROM clientes WHERE id = ?";
        Cliente cliente = null;

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            statement.setInt(1, id);
            ResultSet resultSet = statement.executeQuery();

            if (resultSet.next()) {
                cliente = new Cliente();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNombre(resultSet.getString("nombre"));
                cliente.setEmail(resultSet.getString("email"));
                cliente.setTelefono(resultSet.getString("telefono"));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return cliente;
    }

    @Override
    public List<Cliente> obtenerTodosClientes() {
        String consulta = "SELECT id, nombre, email, telefono, nom_pais FROM clientes c left join pais p on c.cod_pais = p.cod_pais order by nombre";
        List<Cliente> clientes = new ArrayList<Cliente>();

        try (PreparedStatement statement = conexion.prepareStatement(consulta)) {
            ResultSet resultSet = statement.executeQuery();

            while (resultSet.next()) {
                Cliente cliente = new Cliente();
                cliente.setId(resultSet.getInt("id"));
                cliente.setNombre(resultSet.getString("nombre"));
                cliente.setEmail(resultSet.getString("email"));
                cliente.setTelefono(resultSet.getString("telefono"));
                cliente.setNomPais(resultSet.getString("nom_pais"));
                clientes.add(cliente);
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        return clientes;
    }
}

