<%-- 
    Document   : index
    Created on : 9 Feb, 2017, 4:28:57 PM
    Author     : mca1
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="registerentry.jsp" method="post">
            Name:<input type="text" name="name"/><br/><br/>
            Password:<input type="password" name="password"/><br/><br/>
            Email:<input type="text" name="email"/><br/><br/>
            <input type="submit" name="Submit"/>
        </form>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
