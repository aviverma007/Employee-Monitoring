<%@ page import="com.company.directory.Employee,
com.company.directory.CSVEmployeeReader, java.util.*" %> <%@ page session="true"
%> <% if (session.getAttribute("user") == null) {
response.sendRedirect("login.jsp"); return; } List<Employee>
  employees = CSVEmployeeReader.readEmployees(); %>
  <!DOCTYPE html>
  <html>
    <head>
      <title>Employee Directory</title>
      <style>
        body {
          margin: 0;
          font-family: "Segoe UI", sans-serif;
          background: url("https://images.unsplash.com/photo-1551836022-d5d88e9218df")
            no-repeat center center fixed;
          background-size: cover;
          color: #fff;
        }

        .overlay {
          background-color: rgba(0, 0, 0, 0.75);
          position: fixed;
          top: 0;
          left: 0;
          width: 100%;
          height: 100%;
          z-index: -1;
        }

        .sidebar {
          position: fixed;
          top: 0;
          left: 0;
          width: 220px;
          height: 100vh;
          background-color: #2f3640;
          padding-top: 60px;
          z-index: 1;
        }

        .sidebar a {
          padding: 18px 25px;
          text-decoration: none;
          color: #f5f6fa;
          display: block;
          transition: 0.3s;
          border-left: 4px solid transparent;
        }

        .sidebar a:hover {
          background-color: #353b48;
          border-left: 4px solid #00a8ff;
        }

        .topbar {
          position: fixed;
          top: 0;
          left: 220px;
          right: 0;
          height: 60px;
          background-color: #1e272e;
          display: flex;
          justify-content: space-between;
          align-items: center;
          padding: 0 30px;
          z-index: 2;
        }

        .logout-btn {
          background-color: #e84118;
          border: none;
          padding: 10px 16px;
          color: white;
          font-weight: bold;
          border-radius: 5px;
          cursor: pointer;
          text-decoration: none;
          transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
          background-color: #c23616;
        }

        .main {
          margin-left: 240px;
          padding: 100px 40px 40px 40px;
          color: white;
        }

        h2 {
          font-size: 32px;
          margin-bottom: 10px;
        }

        table {
          width: 100%;
          border-collapse: collapse;
          margin-top: 25px;
          background-color: rgba(255, 255, 255, 0.95);
          color: #2f3640;
          border-radius: 8px;
          overflow: hidden;
          box-shadow: 0 2px 8px rgba(0, 0, 0, 0.2);
        }

        th,
        td {
          padding: 14px 18px;
          text-align: left;
          border-bottom: 1px solid #eee;
        }

        th {
          background-color: #00a8ff;
          color: white;
        }

        tr:hover {
          background-color: #f1f1f1;
        }
      </style>
    </head>
    <body>
      <div class="overlay"></div>

      <!-- Sidebar -->
      <div class="sidebar">
        <a href="dashboard.jsp">🏠 Dashboard</a>
        <a href="home.jsp">📋 Employee Directory</a>
        <a href="add.jsp">➕ Add Employee</a>
      </div>

      <!-- Topbar -->
      <div class="topbar">
        <div>👥 Employee Directory</div>
        <a href="logout" class="logout-btn">Logout</a>
      </div>

      <!-- Main Content -->
      <div class="main">
        <h2>All Employees</h2>
        <table>
          <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Designation</th>
          </tr>
          <% for (Employee emp : employees) { %>
          <tr>
            <td><%= emp.getId() %></td>
            <td><%= emp.getName() %></td>
            <td><%= emp.getDesignation() %></td>
          </tr>
          <% } %>
        </table>
      </div>
    </body>
  </html>
</Employee>
