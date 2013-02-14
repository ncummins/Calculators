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
        <script type="text/javascript">
            function isNumber(n) {
                return !isNaN(parseFloat(n)) && isFinite(n);
            }
            
            function valRectangle(){
                var w = document.forms["calc1"]["width"].value;
                var l = document.forms["calc1"]["length"].value;
                
                if ((l == null || l == "") || (w == null || w == "")){
                    alert("You must enter numbers for width and length");
                    return false;
                } else {
                    if (isNumber(w) && isNumber(l)){
                        if (w > 0 && l > 0){
                            return true;
                        } else{
                            alert("Numbers must be greater than 0");
                            return false;
                        }
                    }else{
                        alert("You must enter numbers");
                        return false;
                    }
                }
            }
            
            function valCircle(){
                var r = document.forms["calc2"]["radius"].value;
                
                if (r == null || r == ""){
                    alert("You must enter a number for radius");
                    return false;
                } else {
                    if (isNumber(r)){
                        if (r > 0){
                            return true;
                        } else{
                            alert("Radius must be greater than 0");
                            return false;
                        }
                    } else{
                        alert("You must enter a number");
                        return false;
                    }
                }
            }
            
            function valTriangle(){
                var sideA = document.forms["calc3"]["sideA"].value;
                var sideB = document.forms["calc3"]["sideB"].value;
                
                if ((sideA == null || sideA == "") || (sideB == null || sideB == "")){
                    alert("You must enter numbers for side A and side B");
                    return false;
                } else {
                    if (isNumber(sideA) && isNumber(sideB)){
                        if (sideA > 0 && sideB > 0){
                            return true;
                        } else{
                            alert("Numbers must be greater than 0");
                            return false;
                        }
                    } else{
                        alert("You must enter numbers");
                        return false;
                    }
                }
            }
        </script>
    </head>
    <body>
        <h1>Rectangle Calculator</h1>
        <form id="calc1" name="calc1" method="POST" action="NewServlet1" onsubmit="return valRectangle()">
            Length:  <input type="text" name="length"><br>
            Width: <input type="text" name="width"><br>
            <input id="Submit" name="Submit" type="submit" value="Calculate">
        </form>
        <%
                if (request.getAttribute("rectangleAnswer") != null) {
                    out.print(request.getAttribute("rectangleAnswer"));
                }
        %>
        <br>
        <h1>Circle Calculator</h1>
        <form id="calc2" name="calc2" method="POST" action="CircleController" onsubmit="return valCircle()">
            Radius: <input type="text" name="radius"><br>           
            <input id="Submit" name="Submit" type="submit" value="Calculate">
        </form>
        <%
                if (request.getAttribute("circleAnswer") != null) {
                    out.print(request.getAttribute("circleAnswer"));
                }
        %>
        <br>
        <h1>Triangle Calculator</h1>
        <form id="calc3" name="calc3" method="POST" action="TriangleController" onsubmit="return valTriangle()">
            Side A:  <input type="text" name="sideA"><br>
            Side B: <input type="text" name="sideB"><br>
            <input id="Submit" name="Submit" type="submit" value="Calculate">
        </form>
        <%
                if (request.getAttribute("triangleAnswer") != null) {
                    out.print(request.getAttribute("triangleAnswer"));
                }
        %>
    </body>
</html>
