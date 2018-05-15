package DB;

import jdk.nashorn.internal.scripts.JD;

import java.sql.*;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.List;


/**
 * Created by clara.marti on 08/05/2018.
 */
public class DBConnection {

    static final String JDBC_DRIVER = "org.h2.Driver";
    static final String DB_URL = "jdbc:h2:~/test";
    static final String USER = "admin";
    static final String PASS = "system";


    public List<Users> showUsers() {
        ArrayList<Users> llistaUsuaris = new ArrayList<Users>();

        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Exemple;";

            ResultSet rs = stmt.executeQuery(sql);


            while (rs.next()) {
                Users usu = new Users();
                usu.setId(rs.getString("ID"));
                usu.setName(rs.getString("NAME"));
                usu.setSurname(rs.getString("LASTNAME"));
                usu.setBalance(rs.getString("BALANCE"));

                llistaUsuaris.add(usu);
            }

            stmt.close();
            con.close();


        } catch (Exception e) {
            System.out.println((e.toString()));
        }
        return llistaUsuaris;

    }

    public static void addUser(String id, String name, String surname, String balance) {

        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            String update = "INSERT INTO Exemple(ID, NAME, LASTNAME, BALANCE) VALUES ('" + id + "','" + name + "','" + surname + "','" + balance + "')";

            stmt.executeUpdate(update);

            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println((e.toString()));

        }
    }


    public Users eachuser (String id){
        Users usuari = null;

        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Exemple WHERE ID ='" + id + "'";

            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                usuari.setId(rs.getString("ID"));
                usuari.setName(rs.getString("NAME"));
                usuari.setSurname(rs.getString("LASTNAME"));
                usuari.setBalance(rs.getString("BALANCE"));
            }   else {
                System.out.println("error");

            }
            stmt.close();
            con.close();


        } catch (Exception e) {
            System.out.println((e.toString()));
        }
        return usuari;

    }

}
