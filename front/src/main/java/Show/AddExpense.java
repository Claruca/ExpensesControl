package Show;

import DB.DBConnection;
import DB.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Created by clara.marti on 14/05/2018.
 */
@WebServlet(name = "AddExpense")
public class AddExpense extends HttpServlet {

    static final String JDBC_DRIVER = "org.h2.Driver";
    static final String DB_URL = "jdbc:h2:~/test";
    static final String USER = "admin";
    static final String PASS = "system";

    /*private Users whichusu(String name, String id) {
        try {
            Class.forName(JDBC_DRIVER);
            Connection con = DriverManager.getConnection(DB_URL, USER, PASS);
            Statement stmt = con.createStatement();

            Users usu = new Users();


            stmt.close();
            con.close();


        } catch (Exception e) {
            System.out.println((e.toString()));
        }

    }*/




    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DBConnection db = new DBConnection();
        String id = request.getParameter("id");


    }
}
