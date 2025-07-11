<%@ page session="false" %>
<!DOCTYPE html>
<html>
  <head>
    <title>Login - Employee Portal</title>
    <link rel="icon" href="images/favicon.ico" type="image/x-icon" />
    <style>
      body {
        margin: 0;
        font-family: "Segoe UI", sans-serif;
        background: url("https://images.unsplash.com/photo-1504384308090-c894fdcc538d")
          no-repeat center center fixed;
        background-size: cover;
      }

      .overlay {
        background-color: rgba(0, 0, 0, 0.65);
        position: absolute;
        top: 0;
        left: 0;
        width: 100%;
        height: 100%;
      }

      .login-box {
        position: absolute;
        top: 50%;
        left: 50%;
        transform: translate(-50%, -50%);
        background: rgba(255, 255, 255, 0.9);
        padding: 40px;
        border-radius: 10px;
        width: 320px;
        box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
      }

      h2 {
        text-align: center;
        margin-bottom: 25px;
        color: #2f3640;
      }

      input[type="text"],
      input[type="password"] {
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

    <div class="login-box">
      <h2>Login</h2>
      <form method="post" action="login">
        <input type="text" name="username" placeholder="Username" required />
        <input
          type="password"
          name="password"
          placeholder="Password"
          required
        />
        <button type="submit">Login</button>
      </form>
    </div>
  </body>
</html>
