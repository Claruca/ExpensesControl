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


    public List<Users> addUsers() {
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


        } catch (Exception e) {
            System.out.println((e.toString()));
        }
        return llistaUsuaris;

    }
}
