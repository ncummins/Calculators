<%-- 
    Document   : index
    Created on : Jan 31, 2013, 1:08:42 PM
    Author     : ncummins
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page 1</title>
    </head>
    <body>
        <h1>Rectangle Calculator</h1>
        <form id="calc1" name="calc1" method="POST" action="NewServlet1">
            Length:  <input type="text" name="length"><br>
            Width: <input type="text" name="width"><br>
            <input id="Submit" name="Submit" type="submit" value="Calculate">
        </form>
        <br>
        <h1>Circle Calculator</h1>
        <form id="calc2" name="calc2" method="POST" action="CircleController">
            Radius: <input type="text" name="radius"><br>           
            <input id="Submit" name="Submit" type="submit" value="Calculate">
        </form>
        <br>
        <h1>Triangle Calculator</h1>
        <form id="calc3" name="calc3" method="POST" action="TriangleController">
            Side A:  <input type="text" name="sideA"><br>
            Side B: <input type="text" name="sideB"><br>
            <input id="Submit" name="Submit" type="submit" value="Calculate">
        </form>
    </body>
</html>
