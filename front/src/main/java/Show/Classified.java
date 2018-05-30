package Show;

import DB.DBConnection;
import DB.Expenses;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;

/**
 * Created by clara.marti on 25/05/2018.
 */
@WebServlet(name = "Classified")
public class Classified extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String tipo = request.getParameter("cat");
        DBConnection db = new DBConnection();
        ArrayList<Expenses> at = db.forcategory(tipo);
        request.setAttribute("llista", at);
        request.getRequestDispatcher("/tipo").forward(request, response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
