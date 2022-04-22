package com.example.todoapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/registration")
public class RegistrationServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        RequestDispatcher dispatcher = request.getRequestDispatcher("/header");
        dispatcher.include(request, response);
        pw.println("<form action=\"registration\" method=\"post\">");
        pw.println("<label>First name:</label>");
        pw.println("<input type=\"text\" name=\"first name\">");
        pw.println("<br><br>");
        pw.println("<label>Last name:</label>");
        pw.println("<input type=\"text\" name=\"lastname\">");
        pw.println("<br><br>");
        pw.println("<label>Username:</label>");
        pw.println("<input type=\"text\" name=\"username\">");
        pw.println("<br><br>");
        pw.println("<label>Email:</label>");
        pw.println("<input type=\"email\" name=\"email\">");
        pw.println("<br><br>");
        pw.println("<label>Password:</label>");
        pw.println("<input type=\"password\" name=\"password\">");
        pw.println("<br><br>");
        pw.println("<label>Confirm Password:</label>");
        pw.println("<input type=\"password\" name=\"cPassword\">");
        pw.println("<br><br>");
        pw.println("<input type=\"submit\">");
        pw.println("</form>");
        dispatcher = request.getRequestDispatcher("/footer");
        dispatcher.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String firstName = request.getParameter("f_name");
        String lastName = request.getParameter("l_name");
        String email = request.getParameter("email");
        String userName = request.getParameter("username");
        String password = request.getParameter("password");
        String confirmPassword = request.getParameter("cpassword");

        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        RequestDispatcher dispatcher = request.getRequestDispatcher("/header");
        dispatcher.include(request, response);

        pw.println("<p>First Name: "+firstName+"</p>");
        pw.println("<br>");
        pw.println("<p>Last Name: "+lastName+"</p>");
        pw.println("<br>");
        pw.println("<p>Email Name: "+email+"</p>");
        pw.println("<br>");
        pw.println("<p>Username: "+userName+"</p>");
        pw.println("<br>");
        pw.println("<p>Password: "+password+"</p>");
        pw.println("<br>");
        pw.println("<h1>Sucessfully Registered</h1>");

        dispatcher = request.getRequestDispatcher("/footer");
        dispatcher.include(request, response);

        pw.println("<p>First Name: "+firstName+"</P>");
        pw.println("<br>");
        pw.println("<p>Last Name: "+lastName+"</P>");
        pw.println("<br>");
        pw.println("<p>User Name: "+userName+"</P>");
        pw.println("<br>");
        pw.println("<p>Email: "+email+"</P>");
        pw.println("<br>");
    }
}