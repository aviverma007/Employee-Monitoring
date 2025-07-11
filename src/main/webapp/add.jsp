<%@ page session="true" %> <% if (session.getAttribute("user") == null) {
response.sendRedirect("login.jsp"); return; } %>
<!DOCTYPE html>
<html>
  <head>
    <title>Add Employee</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <style>
      body {
        margin: 0;
        font-family: "Segoe UI", sans-serif;
        background: url("https://images.unsplash.com/photo-1581090700227-1e8b451c6e50")
          no-repeat center center fixed;
        background-size: cover;
        color: #fff;
      }

      .overlay {
        background-color: rgba(0, 0, 0, 0.7);
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
        justify-content: flex-end;
        align-items: center;
        padding-right: 30px;
        z-index: 1;
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

      .form-container {
        margin-left: 240px;
        margin-top: 100px;
        max-width: 600px;
        background-color: rgba(255, 255, 255, 0.9);
        padding: 30px;
        border-radius: 12px;
      }

      h2 {
        color: #2f3640;
      }

      input[type="text"] {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 6px;
        font-size: 16px;
      }

      button {
        width: 100%;
        background-color: #00a8ff;
        color: white;
        padding: 12px;
        border: none;
        font-weight: bold;
        border-radius: 6px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
      }

      button:hover {
        background-color: #0984e3;
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
      <a href="logout" class="logout-btn">Logout</a>
    </div>

    <!-- Form -->
    <div class="form-container">
      <h2>Add New Employee</h2>
      <form method="post" action="add">
        <input type="text" name="id" placeholder="Employee ID" required />
        <input type="text" name="name" placeholder="Name" required />
        <input
          type="text"
          name="designation"
          placeholder="Designation"
          required
        />
        <button type="submit">Add Employee</button>
      </form>
    </div>
  </body>
</html>
