package Repositorio;

import modelo.Tienda;

import java.sql.Connection;
import java.util.List;

public class TiendaDAOImpl implements TiendaDAO {
    private Connection conexion;

    // Constructor que recibe la conexión a la base de datos
    public TiendaDAOImpl(Connection conexion) {
        this.conexion = conexion;
    }

    @Override
    public void agregarTienda(Tienda tienda) {
        // Implementación para agregar una tienda a la base de datos
        // ...
    }

    @Override
    public void actualizarTienda(Tienda tienda) {
        // Implementación para actualizar una tienda en la base de datos
        // ...
    }

    @Override
    public void eliminarTienda(int id) {
        // Implementación para eliminar una tienda de la base de datos
        // ...
    }

    @Override
    public Tienda obtenerTienda(int id) {
        // Implementación para obtener una tienda de la base de datos por su ID
        // ...
        return null;
    }

    @Override
    public List<Tienda> obtenerTodasTiendas() {
        // Implementación para obtener todas las tiendas de la base de datos
        // ...
        return null;
    }
}
