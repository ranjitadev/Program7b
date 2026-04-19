<%@ page import="javax.servlet.http.Cookie" %>
<html>
<body>

<%
    String name = request.getParameter("cname");
    String domain = request.getParameter("cdomain");
    String ageStr = request.getParameter("cage");

    // ✅ Check name
    if (name == null || name.trim().equals("")) {
        out.println("<h3>Error: Cookie name is missing!</h3>");
        return;
    }

    // ✅ Remove spaces (IMPORTANT)
    name = name.replaceAll("\\s+", "");

    int age = 0;

    try {
        age = Integer.parseInt(ageStr);
    } catch (Exception e) {
        out.println("<h3>Error: Invalid age!</h3>");
        return;
    }

    Cookie cookie = new Cookie(name, "Active");
    cookie.setMaxAge(age);

    // ⚠️ TEMP FIX: COMMENT THIS LINE
    // cookie.setDomain(domain);

    response.addCookie(cookie);
%>

<h2>Cookie Created Successfully!</h2>

<p>Name: <%= name %></p>
<p>Expiry: <%= age %></p>

</body>
</html>