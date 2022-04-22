package com.example.todoapp;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/header")
public class HeaderServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        String title = request.getAttribute("title") == null ? "Todo App" : request.getAttribute("title").toString();
        PrintWriter printWriter = response.getWriter();
        printWriter.println("<!DOCTYPE html>");
        printWriter.println("<html>");
        printWriter.println("<head>");
        printWriter.println("<meta charset=\"utf-8\">");
        printWriter.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
        printWriter.println("<title>" + title + "</title>");
        printWriter.println("</head>");
        printWriter.println("<body>");
        printWriter.println("<h1>Todo App</h1>");
    }
}
