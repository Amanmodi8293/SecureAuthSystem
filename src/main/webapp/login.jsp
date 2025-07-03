<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Login | SecureAuth</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">Login to Your Account</h2>
    <form action="${pageContext.request.contextPath}/LoginServlet" method="post">
        <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" class="form-control" required />
        </div>
        <div class="mb-3">
            <label>Password</label>
            <input type="password" name="password" class="form-control" required />
        </div>
        <div class="mb-3">
		    <label>Select Role</label>
		    <select name="role" class="form-select" required>
		        <option value="user" selected>User</option>
		        <option value="admin">Admin</option>
		    </select>
		</div>
        <button type="submit" class="btn btn-success">Login</button>
    </form>
</div>
</body>
</html>
