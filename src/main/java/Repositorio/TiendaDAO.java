package Repositorio;

import modelo.Tienda;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public interface TiendaDAO {
    void agregarTienda(Tienda tienda);
    void actualizarTienda(Tienda tienda);
    void eliminarTienda(int id);
    Tienda obtenerTienda(int id);
    List<Tienda> obtenerTodasTiendas();
}

