<%@ page session="true" %> <% if (session.getAttribute("user") == null) {
response.sendRedirect("login.jsp"); return; } String username = (String)
session.getAttribute("user"); %>
<!DOCTYPE html>
<html>
  <head>
    <title>Dashboard - Employee Portal</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <style>
      body {
        margin: 0;
        font-family: "Segoe UI", sans-serif;
        background: url("https://images.unsplash.com/photo-1521791136064-7986c2920216")
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
        display: flex;
        flex-direction: column;
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
        color: white;
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
        margin-left: 220px;
        padding: 100px 40px 40px 40px;
        color: white;
      }

      h1 {
        font-size: 32px;
        margin-bottom: 15px;
      }

      p {
        font-size: 18px;
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

    <!-- Top Bar -->
    <div class="topbar">
      <div>Welcome, <%= username %> 👋</div>
      <a href="logout" class="logout-btn">Logout</a>
    </div>

    <!-- Main Content -->
    <div class="main">
      <h1>Dashboard</h1>
      <p>Use the sidebar to navigate through the employee portal features.</p>
    </div>
  </body>
</html>
