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
@WebServlet(name = "Servlet")
public class Servlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doPost(request, response);

    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        DBConnection db = new DBConnection();

        String moni = request.getParameter("money");
        String id = request.getParameter("id");
        db.newExpense(moni, id);
        request.setAttribute("moni",moni);
        request.getRequestDispatcher("index.jsp").forward(request, response);
    }


}
