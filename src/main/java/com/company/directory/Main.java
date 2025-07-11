package com.company.directory;

import org.eclipse.jetty.server.Server;
import org.eclipse.jetty.servlet.DefaultServlet;
import org.eclipse.jetty.servlet.ServletContextHandler;
import org.eclipse.jetty.servlet.ServletHolder;

public class Main {
    public static void main(String[] args) throws Exception {
        Server server = new Server(8080);

        ServletContextHandler context = new ServletContextHandler(ServletContextHandler.SESSIONS);
        context.setContextPath("/");
        context.setResourceBase("src/main/webapp"); // path to your HTML/CSS/JS/JSP files
        context.setWelcomeFiles(new String[]{"login.jsp"}); // or dashboard.jsp

        // ✅ Serves JSPs and static files
        ServletHolder defaultServlet = new ServletHolder("default", DefaultServlet.class);
        context.addServlet(defaultServlet, "/");

        // ✅ Register servlets
        context.addServlet(LoginServlet.class.getName(), "/login");
        context.addServlet(LogoutServlet.class.getName(), "/logout");
        context.addServlet(AddEmployeeServlet.class.getName(), "/add");

        server.setHandler(context);
        server.start();
        System.out.println("✅ Server started at http://localhost:8080");
        server.join();
    }
}
