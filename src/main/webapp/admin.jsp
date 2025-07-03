<%@ page import="jakarta.servlet.http.HttpSession" %>
<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }

    String role = (String) session.getAttribute("role");
    if (!"admin".equals(role)) {
        response.getWriter().println("⛔ Access Denied: Admins only.");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admin Panel</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
   <div class="container mt-5">
    <div class="card shadow-lg p-4 border-0 rounded-4">
        <div class="d-flex justify-content-between align-items-center mb-3">
            <h2 class="text-primary mb-0">Admin Dashboard</h2>
            <a href="${pageContext.request.contextPath}/LogoutServlet" class="btn btn-outline-danger">Logout</a>
        </div>

        <p class="fs-5 mb-4">Welcome, <strong class="text-dark">
            <%= ((com.secureauth.model.User) session.getAttribute("user")).getName() %></strong></p>

        <div class="d-grid gap-3 d-sm-flex">
            <a href="dashboard.jsp" class="btn btn-secondary btn-lg">Go to User Dashboard</a>
            <a href="admin.jsp" class="btn btn-primary btn-lg">Admin Controls</a>
        </div>
    </div>
</div>

</body>
</html>
