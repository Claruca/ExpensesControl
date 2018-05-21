package Show;

import DB.DBConnection;
import DB.Expenses;
import DB.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by clara.marti on 26/04/2018.
 */
@WebServlet(name = "OneUser")
public class OneUser extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DBConnection db = new DBConnection();

        String idUsuari = request.getParameter("idusu");
        Users oneUsu = db.eachuser(idUsuari);

        Double sumtotal = DBConnection.total(idUsuari);
        request.setAttribute("oneUsu", oneUsu);
        request.setAttribute("sumtotal",sumtotal);
        request.getRequestDispatcher("/oneuser").forward(request,response);
    }

}
