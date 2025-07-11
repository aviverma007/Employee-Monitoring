package com.company.directory;

import java.io.File;
import java.io.FileReader;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

import com.opencsv.CSVReader;

public class CSVEmployeeReader {
    private static final String FILE_PATH = "data/employees.csv";

    public static List<Employee> readEmployees() {
        List<Employee> employees = new ArrayList<>();
        File file = new File(FILE_PATH);

        if (!file.exists()) {
            System.err.println("❌ CSV file not found: " + file.getAbsolutePath());
            return employees;
        }

        try (CSVReader reader = new CSVReader(new FileReader(file))) {
            String[] line;
            boolean first = true;
            while ((line = reader.readNext()) != null) {
                if (first) {
                    first = false;
                    continue; // Skip header
                }
                System.out.println("✅ Reading row: " + Arrays.toString(line));
                if (line.length >= 3) {
                    employees.add(new Employee(line[0], line[1], line[2]));
                } else {
                    System.err.println("⚠️ Skipping invalid line: " + Arrays.toString(line));
                }
            }
        } catch (Exception e) {
            System.err.println("❌ Error reading CSV file:");
            e.printStackTrace();
        }
        return employees;
    }
}
