/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Repositorio;

import conexion.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import modelo.Login;
import modelo.Usuario;

/**
 *
 * @author carolina
 */
public class LoginDAO {

    public LoginDAO() {
    }

    public boolean validarDatosLogin(Login dataLogin) {
        boolean datosValidos = false;

        String query = "SELECT email, password FROM usuarios WHERE email = ? AND password = ?";

        System.out.println("validarLogin query: " + query);

        try {
            Conexion db = new Conexion();
            Connection con = db.conexion();
            try {
                PreparedStatement sent = con.prepareStatement(query);
                sent.setString(1, dataLogin.getEmail());
                sent.setString(2, dataLogin.getPassword());

                ResultSet rs = sent.executeQuery();

                datosValidos = rs.next();
                rs.close();
                sent.close();
            } catch (Exception ex) {
                System.out.println("Error: " + ex.getMessage());
            }
            con.close();
        } catch (Exception ex) {
            System.out.println("Error: " + ex.getMessage());
        }
        return datosValidos;
    }
}
