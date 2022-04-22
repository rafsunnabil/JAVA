package com.example.todoapp;

import java.io.PrintWriter;

public interface HtmlPage {

    default void htmlStartTags(PrintWriter pw, String title) {
        pw.println("<!DOCTYPE html>");
        pw.println("<html>");
        pw.println("<head>");
        pw.println("<meta charset=\"utf-8\">");
        pw.println("<meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">");
        pw.println("<title>" + title + "</title>");
        pw.println("</head>");
        pw.println("<body>");
    }

    default void htmlEndTags(PrintWriter pw) {
        pw.println("</body>");
        pw.println("</html>");
    }
}
