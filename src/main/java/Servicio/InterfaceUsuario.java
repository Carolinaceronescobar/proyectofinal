package Servicio;

import modelo.Usuario;

import java.util.List;

public interface InterfaceUsuario {

    void agregarUsuario(Usuario usuario);
    void actualizarUsuario(Usuario usuario);
    void eliminarUsuario(int id);
    Usuario obtenerUsuario(int id);
    List<Usuario> obtenerTodosUsuarios();
}
