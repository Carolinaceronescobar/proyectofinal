/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Log;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileWriter;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CrearLog {

    public static void errorLog(String errorMensaje) {
        doRutaMkdir(); // metodo que verifica ruta donde se creará log, sino existe crear la ruta con los directorios respectivos
        crearArchivoLog(errorMensaje); // metodo que crea el archivo de log
    }

    public static void crearArchivoLog(String errorMensaje) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyyMMdd");
        SimpleDateFormat dateFormatHora = new SimpleDateFormat("HH:mm:ss");
        Date dateNow = new Date();
        String nombreArchivo = dateFormat.format(dateNow) + ".txt"; // Aqui se le asigna el nombre y 
        BufferedWriter out = null;
        try {
            out = new BufferedWriter(new FileWriter("/opt/tomcat/bin/proyectoWeb/Log/"+ nombreArchivo, true));
            out.write("ERROR: " + dateFormatHora.format(dateNow) + " " + errorMensaje);
            out.write("\n");
        } catch (IOException e) {
            System.out.println("[Error][CrearLog][crearArchivoLog][IOException]: " + e.getMessage());
            CrearLog.errorLog("[CrearLog][crearArchivoLog][IOException]: " + e.getMessage());
        } finally {
            if (out != null) {
                try {
                    out.close();
                } catch (IOException e) {
                    System.out.println("[Error][CrearLog][crearArchivoLog][IOException]: " + e.getMessage());
                    CrearLog.errorLog("[CrearLog][crearArchivoLog][IOException]: " + e.getMessage());
                }
            }
        }
    }

    public static void doRutaMkdir() {
        if (!(new File("/opt/tomcat/bin/proyectoWeb/Log/").exists())) {
            (new File("/opt/tomcat/bin/proyectoWeb/Log/")).mkdirs();
        }
    }

}
