package Show;

import DB.DBConnection;
import DB.Users;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/**
 * Created by clara.marti on 31/05/2018.
 */
@WebServlet(name = "SelectPlace")
public class SelectPlace extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String idpis = request.getParameter("idpis");
        DBConnection db = new DBConnection();
        List<Users> list = db.showUsers(idpis);

        request.setAttribute("list",list);
        request.setAttribute("idpis",idpis);
        request.getRequestDispatcher("/index.jsp").forward(request,response);

    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        this.doPost(request,response);

    }
}
