<%@ page language="java" contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register | SecureAuth</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
</head>
<body class="bg-light">
<div class="container mt-5">
    <h2 class="mb-4">Create New Account</h2>
    <form action="${pageContext.request.contextPath}/RegisterServlet" method="post" id="registerForm">
        <div class="mb-3">
            <label>Name</label>
            <input type="text" name="name" class="form-control" required />
        </div>
        <div class="mb-3">
            <label>Email</label>
            <input type="email" name="email" id="email" class="form-control" required />
            <small id="email-status" class="text-danger"></small>
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
       <button type="submit" class="btn btn-primary">Register</button>
    </form>
</div>

<script>
$(document).ready(function(){
    $("#email").on("input", function(){
        let email = $(this).val();

        // Check if input has @ and at least 1 dot after it (basic pattern)
        let emailPattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;

        if(emailPattern.test(email)) {
            $.ajax({
                url: "CheckEmailServlet",
                method: "POST",
                data: { email: email },
                success: function(response){
                    $("#email-status").text(response);
                }
            });
        } else {
            $("#email-status").text("✍️ Enter a valid email to check availability");
        }
    });
});

</script>
</body>
</html>
