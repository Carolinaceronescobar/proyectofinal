/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Controlador;

import Servicio.UsuarioService;
import modelo.Usuario;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.servlet.ServletException;
import java.io.IOException;


@Controller
@RequestMapping("/api/login")
public class LoginController {

    @Autowired
    private UsuarioService usuarioService;

        // Guardar la información del usuario en la sesión
    public String login(HttpServletRequest request) {

        HttpSession session = request.getSession();
        Usuario usuario = null;
        session.setAttribute("usuario", usuario);

        // Redirigir al usuario a la vista del cliente
        return "redirect:/webapp/vista_cliente.jsp";
    }

    }