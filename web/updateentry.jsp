<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    </head>
    <body>
        <form action="update.jsp" method="post">
            ID:<input type="text" name="id"/><br/><br/>
            Name:<input type="text" name="name"/><br/><br/>
            Password :<input type="password" name="password"/><br/><br/>
            Email ID : <input type="text" name="email"/><br/><br/>
            <input type="submit" value="Update"/>
        </form>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
