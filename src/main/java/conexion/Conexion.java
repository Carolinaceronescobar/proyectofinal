package conexion;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;

public class Conexion {
    private static Conexion instancia = null;
    private static String url = "jdbc:mysql://localhost:3306/marketingdigital";
    private static String user = "root";
    private static String pass = "";
    private static Connection con = null;
    private Statement stmt = null;

    public Conexion() throws SQLException, ClassNotFoundException {
        System.out.println("Conectando...");
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection(url, user, pass);
        stmt = con.createStatement();
        System.out.println(con);
        System.out.println("Conectado");
    }

    public static Conexion obtenerInstancia() throws SQLException, ClassNotFoundException {
        if (instancia == null) {
            instancia = new Conexion();
        }
        return instancia;
    }

    public Connection getConexion() {
        return con;
    }

    public int cerrarConexion() {
        try {
            con.close();
            return 0;
        } catch (Exception exc) {
            System.out.println("Error al cerrar la conexion: " + exc);
            return -1;
        }
    }

    public void close() {
        try {
            if (con != null) {
                stmt.close();
                con.close();
                con = null;
            }
        } catch (SQLException sqe) {
            System.out.println("Unexpected exception: " + sqe.toString() + ", sqlstate = " + sqe.getSQLState());
            sqe.printStackTrace();
        }
    }

    public Connection conexion() {
        return con;
    }

    public Statement sentencia() {
        return stmt;
    }
}