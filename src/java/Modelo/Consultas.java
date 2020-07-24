package Modelo;


import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;


/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

public class Consultas extends conexion{
    
    public ArrayList<String> GetLeng(String L) throws SQLException
    {
        String Consulta;
        Statement st=con.createStatement();
        ResultSet rs= null;
        L = "\""+L+"\"";
        Consulta="select * from Lenguajes where Nombre = "+L;
        rs = st.executeQuery(Consulta);
        ArrayList<String> LenguajeDesc = new ArrayList<String>();
        while(rs.next()){
                 LenguajeDesc.add(rs.getString("Nombre"));
                 LenguajeDesc.add(rs.getString("Dificultad"));
         }
        Consulta="select * from PropiedadLenguaje where Lenguaje = "+L+"and Nombre=\"Sintaxis\" ";
        rs = st.executeQuery(Consulta);
        while(rs.next()){
                    String str=rs.getString("Descripcion");
                    
                 LenguajeDesc.add(str);
         }
        Consulta="select * from PropiedadLenguaje where Lenguaje = "+L+"and Nombre=\"Ventajas\" ";
        rs = st.executeQuery(Consulta);
        while(rs.next()){
                    String str=rs.getString("Descripcion");
                    
                 LenguajeDesc.add(str);
         }
        Consulta="select * from PropiedadLenguaje where Lenguaje = "+L+"and Nombre=\"Documentacion\" ";
        rs = st.executeQuery(Consulta);
        while(rs.next()){
                    String str=rs.getString("Descripcion");
                    
                 LenguajeDesc.add(str);
         }
        return LenguajeDesc;
    }
    
    
    public ArrayList<String> GetHerr(String H) throws SQLException
    {
        String Consulta;
        Statement st=con.createStatement();
        ResultSet rs= null;
        H = "\""+H+"\"";
        Consulta="select * from Herramientas where Nombre = "+H;
        rs = st.executeQuery(Consulta);
        ArrayList<String> LenguajeDesc = new ArrayList<String>();
        while(rs.next()){
                 LenguajeDesc.add(rs.getString("Nombre"));
                 LenguajeDesc.add(rs.getString("Enlace"));
                  LenguajeDesc.add(rs.getString("Descripcion"));
         }
        Consulta="select * from PropiedadHerramienta where Herramienta = "+H+"and Nombre = \"Como usar\"";
        rs = st.executeQuery(Consulta);
        while(rs.next()){
                    String str=rs.getString("Descripcion");
                    
                 LenguajeDesc.add(str);
         }
        Consulta="select * from PropiedadHerramienta where Herramienta = "+H+"and Nombre = \"Interfaz\"";
        rs = st.executeQuery(Consulta);
        while(rs.next()){
                    String str=rs.getString("Descripcion");
                    
                 LenguajeDesc.add(str);
         }
        Consulta="select * from PropiedadHerramienta where Herramienta = "+H+"and Nombre = \"Tips\"";
        rs = st.executeQuery(Consulta);
        while(rs.next()){
                    String str=rs.getString("Descripcion");
                    
                 LenguajeDesc.add(str);
         }
        Consulta="select * from PropiedadHerramienta where Herramienta = "+H+"and Nombre = \"Comandos\"";
        rs = st.executeQuery(Consulta);
        while(rs.next()){
                    String str=rs.getString("Descripcion");
                    
                 LenguajeDesc.add(str);
         }
        
        return LenguajeDesc;
    }
    public ArrayList<String> GetConocimiento(String C) throws SQLException
    {
        String Consulta;
        Statement st=con.createStatement();
        ResultSet rs= null;
        C = "\""+C+"\"";
        Consulta="select * from Conocimiento where Tipo = "+C;
        rs = st.executeQuery(Consulta);
        ArrayList<String> LenguajeDesc = new ArrayList<String>();
        while(rs.next()){
                 LenguajeDesc.add(rs.getString("Tipo"));
                 LenguajeDesc.add(rs.getString("Contenido"));
         }
        return LenguajeDesc;
    }
    
    public static void main(String [] args) throws SQLException{
        Consultas cons = new Consultas();
    }
    
}
    
