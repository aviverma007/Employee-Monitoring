package com.company.directory;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class LoginServlet extends HttpServlet {
    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String user = req.getParameter("username");
        String pass = req.getParameter("password");

        if ("admin".equals(user) && "admin123".equals(pass)) {
            req.getSession().setAttribute("user", user);
            res.sendRedirect("dashboard.jsp");
        } else {
            res.sendRedirect("login.jsp?error=1");
        }
    }
}
