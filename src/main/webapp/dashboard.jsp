<%@ page import="jakarta.servlet.http.HttpSession" %>

<%
    HttpSession session1 = request.getSession(false);
    if (session1 == null || session.getAttribute("user") == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Dashboard</title>
 <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
</head>
<body>
<%@ include file="header.jsp" %>
    <div class="container mt-4">
        <h2>Welcome, <%= ((com.secureauth.model.User)session.getAttribute("user")).getName() %>!</h2>
        <p>This is your dashboard.</p>
        <a href="${pageContext.request.contextPath}/LogoutServlet" class="btn btn-danger">Logout</a>
    </div>
<%@ include file="footer.jsp" %>
</body>
</html>
