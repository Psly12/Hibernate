<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Hibernate Show</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <%@page import="java.util.*,com.java.*,org.hibernate.*,org.hibernate.cfg.*"%>
        <%! int id;String pw;String name;String em;Session session1=null;%>
    </head>
    <body>
        <table width="220" border="1">
            <tr>
                <th>ID</th><th>Name</th>
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
            %>
            <tr><td><%=id%></td><td><%=name%></td></tr>
            <%
            }
            session1.close();
            %>
        </table>
    </body>
</html>
