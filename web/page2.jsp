<%-- 
    Document   : newjsp
    Created on : Jan 31, 2013, 1:25:31 PM
    Author     : ncummins
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 2</title>
    </head>
    <body>
        <%
            Object answer = request.getAttribute("answer");
            String strAnswer = answer.toString();
            out.println(strAnswer);
        
        
        %>
    </body>
</html>
