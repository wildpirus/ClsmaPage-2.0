/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Datos;

import java.sql.Connection;
import java.sql.*;
import java.sql.SQLException;
import javax.sql.DataSource;
import org.apache.commons.dbcp2.BasicDataSource;

/**
 *
 * @author CL SMA
 */
public class Conexion {
    private static final String JDBC_URL = "jdbc:postgresql://localhost:5432/prometodb";
    private static final String JDBC_USER = "postgres";
    private static final String JDBC_PASSWORD = "J450n450AC";
    
    public static DataSource getDataSource(){
        BasicDataSource ds = new BasicDataSource();
        ds.setUrl(JDBC_URL);
        ds.setUsername(JDBC_USER);
        ds.setPassword(JDBC_PASSWORD);
        System.out.println(ds);
        ds.setInitialSize(50);//50 Conexiones de manera inicial POOL DE CONEXIONES
        
       
        return ds;
    }
    
    public static Connection getConnection() throws SQLException{
        return getDataSource().getConnection(); //Manda a llamar al metodo getDataSource, para obtener 
                                                //una conexion a la base de datos apartir del pool de conexiones
    }
    
    public static void close(ResultSet rs){
        try {
            rs.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }
    
    public static void close(PreparedStatement stmt){       
        try {
            stmt.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }
    
    public static void close(Connection conn){
        try {
            conn.close();
        } catch (SQLException ex) {
            ex.printStackTrace(System.out);
        }
    }
}
