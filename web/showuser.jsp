<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hibernate Show</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
        <%@page import="java.util.*,com.java.*,org.hibernate.*,org.hibernate.cfg.*"%>
        <%! int id;String pw;String name;String em;Session session1=null;%>
    </head>
    <body>
        <table width="220" border="1" class="table">
            <tr>
                <th>ID</th><th>Name</th><th>E-Mail</th>
            </tr>
            <%
            Configuration cf=new Configuration();
            cf.configure();
            SessionFactory sf=cf.buildSessionFactory();
            session1=sf.openSession();
            String SQL_QUERY="from User";/*use bean class*/
            Query query = session1.createQuery(SQL_QUERY);
            Iterator it=query.iterate();
            while(it.hasNext())
            {
                User e=(User)it.next();
                id=e.getId();
                name=e.getName();
                em=e.getEmail();
            %>
            <tr><td><%=id%></td><td><%=name%></td><td><%=em%></td></tr>
            <%
            }
            session1.close();
            %>
        </table>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    </body>
</html>
