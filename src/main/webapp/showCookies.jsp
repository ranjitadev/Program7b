<%@ page import="javax.servlet.http.Cookie" %>
<html>
<head>
    <title>Active Cookies</title>
</head>
<body>

<h2>Active Cookie List</h2>

<%
    Cookie[] cookies = request.getCookies();

    if (cookies != null && cookies.length > 0) {
        for (Cookie c : cookies) {
%>
            <p>
                <b>Name:</b> <%= c.getName() %> <br>
                <b>Value:</b> <%= c.getValue() %> <br>
                <b>Path:</b> <%= c.getPath() %> <br>
                <b>Max Age:</b> <%= c.getMaxAge() %>
            </p>
            <hr>
<%
        }
    } else {
%>
    <p>❌ No cookies found</p>
<%
    }
%>

</body>
</html>