package Show;

import DB.DBConnection;
import DB.Expenses;
import DB.Users;
import com.sun.rmi.rmid.ExecPermission;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;

/**
 * Created by clara.marti on 14/05/2018.
 */
@WebServlet(name = "AddExpense")
public class AddExpense extends HttpServlet {

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String idg = request.getParameter("id_g");
        String category = request.getParameter("category");
        String amount = request.getParameter("amount");
        String idusuari = request.getParameter("id");

        DBConnection.addexpense(idg, category, amount, idusuari);

        /*response.setContentType("application/json");
        PrintWriter out = response.getWriter();
        out.print("{\"correct\": true}");
        out.flush();*/

        request.getRequestDispatcher("/index.jsp").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request, response);



    }

}


