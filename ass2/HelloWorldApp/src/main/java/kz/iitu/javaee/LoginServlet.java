package kz.iitu.javaee;

import java.io.*;
import javax.servlet.*;
import javax.servlet.annotation.*;
import javax.servlet.http.*;


@WebServlet(name = "Login",value = "/loginAction")
public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String name = request.getParameter("name");
        String password = request.getParameter("password");

        PrintWriter out = response.getWriter();
        out.println("<html>");
        out.println("<h2>Hello " + name + ", nice to see you!</h2>");
        out.println("<span>Tsss, your password is:  " + password + "</span>");
        out.println("</html>");
    }

}
