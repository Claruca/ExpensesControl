package Show;

import DB.DBConnection;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by clara.marti on 22/05/2018.
 */
@WebServlet(name = "DeleteData")
public class DeleteData extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        this.doGet(request, response);
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        String columntable = request.getParameter("columnid");
        DBConnection.deleterow(columntable);
        request.getRequestDispatcher("index.jsp").forward(request, response);

    }
}
