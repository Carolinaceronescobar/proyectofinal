package Servicio;

import Repositorio.UsuarioDAO;
import modelo.Usuario;
import org.springframework.stereotype.Service;

@Service
public class UsuarioService {

    private UsuarioDAO usuarioDAO;
    public Usuario obtenerUsuario(int id) {
        return usuarioDAO.obtenerUsuario(id);
    }

    public void agregarUsuario(Usuario usuario) {
        usuarioDAO.agregarUsuario(usuario);
    }

    public void actualizarUsuario(Usuario usuario) {
        usuarioDAO.actualizarUsuario(usuario);
    }

    public void eliminarUsuario(int id) {
        usuarioDAO.eliminarUsuario(id);
    }

}
