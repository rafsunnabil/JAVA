package com.example.library_management_system;

import javax.annotation.Resource;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.sql.DataSource;
import java.io.IOException;
import java.sql.SQLException;

@WebServlet("/returnbook")
public class ReturnBookServlet extends HttpServlet {

    @Resource(name = "jdbc/users")
    private DataSource dataSource;

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/returnbook.jsp");
        requestDispatcher.forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        User user = new User(request.getParameter("userid"),request.getParameter("bookid"),request.getParameter("returndate"));
        UserUtil userUtil = new UserUtil();
        try {
            userUtil.create(user, dataSource);
        } catch (SQLException e) {
            e.printStackTrace();
        }

        HttpSession session = request.getSession();
        session.setAttribute("success", "Book Returned Successfully");

        RequestDispatcher requestDispatcher = request.getRequestDispatcher("/returnbook.jsp");
        requestDispatcher.forward(request, response);
    }
}
