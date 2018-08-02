package DB;

import com.sun.rmi.rmid.ExecPermission;
import com.sun.xml.internal.bind.v2.TODO;
import jdk.nashorn.internal.scripts.JD;
import org.apache.commons.lang3.time.DateUtils;

import java.sql.*;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.Calendar;
import java.util.List;
import java.util.Date;


/**
 * Created by clara.marti on 08/05/2018.
 */
public class DBConnection {

    static final String JDBC_DRIVER = "org.h2.Driver";
    static final String DB_URL = "jdbc:h2:~/test";
    static final String USER = "admin";
    static final String PASS = "system";


    public List<Users> showUsers(String selectplace) {
        ArrayList<Users> llistaUsuaris = new ArrayList<Users>();

        try {

            String sql;
            if (selectplace == null) {
                sql = "SELECT * FROM Exemple";

            } else {
                sql = "SELECT * FROM Exemple Where id_pis ='" + selectplace + "'";
            }

            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();
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


    public List<Place> flats() {
        ArrayList<Place> pisos = new ArrayList<Place>();
        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();
            String sql = "SELECT * FROM Pis;";

            ResultSet rs = stmt.executeQuery(sql);


            while (rs.next()) {
                Place pis = new Place();
                pis.setPlaceid(rs.getInt(1));
                pis.setPlacename(rs.getString("NOM"));

                pisos.add(pis);
            }

            stmt.close();
            con.close();


        } catch (Exception e) {
            System.out.println((e.toString()));
        }

        return pisos;
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

    /**
     * Show all the info from the selected user
     **/
    public Users eachuser(String id) {
        Users usuari = null;
        ArrayList<Expenses> ar = new ArrayList<Expenses>();
        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            String sql = "SELECT * FROM Exemple ex LEFT JOIN gastos gas ON ex.id=gas.iduser WHERE ID ='" + id + "'";

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                if (usuari == null) {
                    usuari = new Users();
                    usuari.setId(rs.getString("ID"));
                    usuari.setName(rs.getString("NAME"));
                    usuari.setSurname(rs.getString("LASTNAME"));
                    usuari.setBalance(rs.getString("BALANCE"));
                }

                Expenses exp = new Expenses();
                exp.setId(rs.getString("ID_G"));
                exp.setCategory(rs.getString("CATEGORY"));
                exp.setAmount(rs.getString("AMOUNT"));
                exp.setIdUsuari(rs.getString("IDUSER"));
                exp.setDia(rs.getString("DIA"));

              /*
              falta arreglat aixo


                exp.setDating(rs.getString("DIA"));




                */
                ar.add(exp);

            }

            usuari.setExpencount(ar);

            stmt.close();
            con.close();
        } catch (Exception e) {
            System.out.println((e.toString()));
        }
        return usuari;

    }

    /**
     * Add expense with the parametes from the form and the hidden iduser
     **/

    public static void addexpense(String id, String category, String amount, String idusuari) {
        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();
//            Date date = new Date();
            SimpleDateFormat sdf = new SimpleDateFormat("dd/M/yyyy");
            String dia = sdf.format(new Date());


            /*
            *
            * ARREGLAR LO DE DATE A SA BD
            *
            *
            *
            * */

            String addGasto = "INSERT INTO GASTOS (id_g,category,amount,iduser, dia) VALUES" +
                    "(" + id + ",'" + category + "','" + amount + "','" + idusuari + "','" + dia + "')";
            stmt.executeUpdate(addGasto);
//
            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("error");
        }
    }

    /**
     * Amount's sum of each user
     **/

    public static double total(String idusu) {

        Double sumtotal = 0.0;

        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            String sql = "SELECT sum(amount) FROM gastos WHERE iduser ='" + idusu + "'";

            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                sumtotal = rs.getDouble(1);

            } else {
                sumtotal = 0.0;
            }

            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("error");
        }
        return sumtotal;

    }


    public static double alltotal() {
        Double alltotal = 0.0;
        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            String sql = "SELECT sum(amount) FROM gastos";
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                alltotal = rs.getDouble(1);
            } else {
                alltotal = 0.0;
            }

            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("error");
        }
        return alltotal;

    }

    public static void deleterow(String columnid) {

        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            String sql = "DELETE FROM gastos WHERE id_g='" + columnid + "'";
            stmt.executeUpdate(sql);


            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("error");
        }

    }

    /**
     * Classified by category     *
     */

    public ArrayList<Expenses> forcategory(String category) {

        ArrayList<Expenses> forcat = new ArrayList<Expenses>();
        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            String sql = "SELECT category,amount, ex.name, dia FROM GASTOS ga JOIN Exemple ex ON ga.iduser = ex.id WHERE category ='" + category + "'";

            ResultSet rs = stmt.executeQuery(sql);

            while (rs.next()) {
                Expenses gastotipo = new Expenses();
                gastotipo.setCategory(rs.getString("category"));
                gastotipo.setAmount(rs.getString("amount"));
                //Aqui hauria de ser s'id, pero li pos es nom, amem si cuela: Ha colat
                gastotipo.setIdUsuari(rs.getString("name"));
                gastotipo.setDia(rs.getString("dia"));

                forcat.add(gastotipo);
            }

            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("error");
        }
        return forcat;
    }


    public Integer sumusuaris() {
        Integer sumusu = 0;

        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            String sql = "SELECT count(id) FROM exemple";
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                sumusu = rs.getInt(1);

            }

            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("error");
        }
        return sumusu;
    }


    public static double totalcategory(String category) {
        Double totalcat = 0.0;
        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            String sql = "SELECT sum(amount) FROM gastos WHERE category ='" + category + "'";
            ResultSet rs = stmt.executeQuery(sql);

            if (rs.next()) {
                totalcat = rs.getDouble(1);
            } else {
                totalcat = 0.0;
            }

            stmt.close();
            con.close();

        } catch (Exception e) {
            System.out.println("error");
        }
        return totalcat;

    }


}

//TOTAL/nº usuaris
//TOTAL - total cada usuari


//a = 20
//        b= 30
//        c= 10
//        TOTAL = 60/3 = 20
//
//        20 -20 = 0
//        30 - 20 = 10
//        10 - 20 = -10


//    Insert into gastos (id_g,category,amount,iduser) values (01,'cuina',1.6,1);