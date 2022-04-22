package com.example.todoapp;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/login")
public class LoginServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        request.setAttribute("title", "Login Page");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/header");
        dispatcher.include(request, response);
        pw.println("<form action=\"login\" method=\"get\">");
        pw.println("<label>Username:</label>");
        pw.println("<input type=\"text\" name=\"username\">");
        pw.println("<br><br>");
        pw.println("<label>Password:</label>");
        pw.println("<input type=\"password\" name=\"password\">");
        pw.println("<br><br>");
        pw.println("<input type=\"submit\">");
        pw.println("</form>");
        dispatcher = request.getRequestDispatcher("/footer");
        dispatcher.include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html");
        PrintWriter pw = response.getWriter();

        request.setAttribute("title", "Login Page");
        RequestDispatcher dispatcher = request.getRequestDispatcher("/header");
        dispatcher.include(request, response);
        pw.println("Successfully Received");
        dispatcher = request.getRequestDispatcher("/footer");
        dispatcher.include(request, response);
    }

    @Override
    protected void doPut(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

    }
}
