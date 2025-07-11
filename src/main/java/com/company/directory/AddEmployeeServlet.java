package com.company.directory;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.nio.file.StandardOpenOption;

import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

public class AddEmployeeServlet extends HttpServlet {
private static final String FILE_PATH = "data/employees.csv";

    protected void doPost(HttpServletRequest req, HttpServletResponse res) throws ServletException, IOException {
        String id = req.getParameter("id");
        String name = req.getParameter("name");
        String designation = req.getParameter("designation");

        if (id != null && name != null && designation != null &&
            !id.isEmpty() && !name.isEmpty() && !designation.isEmpty()) {

            String newLine = String.format("%s,%s,%s%n", id, name, designation);

            synchronized (this) {
                try {
                    Files.write(Paths.get(FILE_PATH), newLine.getBytes(), StandardOpenOption.APPEND);
                    System.out.println("Employee added: " + newLine);
                } catch (IOException e) {
                    e.printStackTrace();
                }
            }
        }

        res.sendRedirect("home.jsp");
    }
}
