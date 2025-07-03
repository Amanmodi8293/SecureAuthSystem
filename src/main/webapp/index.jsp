<%@ page language="java" contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Welcome | SecureAuthSystem</title>

    <!-- ✅ Bootstrap CSS CDN -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: linear-gradient(to right, #667eea, #764ba2);
            color: white;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            font-family: 'Segoe UI', sans-serif;
        }
        .card {
            border-radius: 20px;
            padding: 30px;
            background-color: rgba(255, 255, 255, 0.1);
            backdrop-filter: blur(10px);
            box-shadow: 0 8px 16px rgba(0,0,0,0.25);
        }
        .btn-custom {
            width: 120px;
        }
    </style>
</head>
<body>
    <div class="card text-center">
        <h2 class="mb-4">Welcome to SecureAuthSystem 🔐</h2>
        <div class="d-flex justify-content-center gap-3">
            <a href="register.jsp" class="btn btn-light btn-custom">Register</a>
            <a href="login.jsp" class="btn btn-outline-light btn-custom">Login</a>
        </div>
    </div>

    <!-- ✅ Bootstrap JS (optional) -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
