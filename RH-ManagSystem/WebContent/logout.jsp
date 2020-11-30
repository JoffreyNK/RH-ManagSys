

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Déconnexion</title>
    </head>
    <body>
        <%
            session.invalidate();
        	request.getRequestDispatcher("/login.jsp").forward(request, response);
        %>
    </body>
</html>
